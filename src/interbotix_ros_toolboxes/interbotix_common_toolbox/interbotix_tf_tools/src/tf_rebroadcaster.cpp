#include "interbotix_tf_tools/tf_rebroadcaster.h"

#include <string>

TFRebroadcaster::TFRebroadcaster(ros::NodeHandle *node_handle)
  : node(*node_handle)
{
  // Declare and get parameters
  ros::param::get("~filepath_config", filepath_config_);
  ros::param::get("~topic_to", topic_to_);
  ros::param::get("~topic_from", topic_from_);

  // Load configuration file
  try {
    // try to load motor_configs yaml file
    config_ = YAML::LoadFile(filepath_config_.c_str());
  } catch (YAML::BadFile & error) {
    // if file is not found or a bad format, shut down
    ROS_FATAL(
      "[tf_rebroadcaster] Config file at '%s' was not found or has a bad format. Shutting down...",
      filepath_config_.c_str());
    ROS_FATAL("YAML Error: '%s'", error.what());
    return;
  }

  // Print out configuration info
  ROS_INFO(
    "[tf_rebroadcaster] Will broadcast TFs from topic '%s' to topic '%s'.",
    topic_from_.c_str(),
    topic_to_.c_str());

  // Get frames config
  YAML::Node all_frames = config_["frames"];
  for (
    YAML::const_iterator frame_itr = all_frames.begin();
    frame_itr != all_frames.end();
    frame_itr++)
  {
    // Get all parent and child frames, insert into map
    std::string frame_parent = frame_itr->first.as<std::string>();
    std::string frame_child = frame_itr->second["child_frame_id"].as<std::string>();
    std::string prefix = frame_itr->second["prefix"].as<std::string>();
    frames_.push_back(Frame{frame_parent, frame_child, prefix});

    if (prefix == "") {
      ROS_INFO(
        "[tf_rebroadcaster] Will broadcast TF from frame '%s' to frame '%s'.",
        frame_child.c_str(),
        prefix.c_str());
    } else {
      // Print out which frames will be rebroadcasted
      ROS_INFO(
        "[tf_rebroadcaster] Will broadcast TF from frame '%s' to frame '%s', prepending prefix '%s'.",
        frame_parent.c_str(),
        frame_child.c_str(),
        prefix.c_str());
    }
  }

  // Create pubs and subs
  sub_tf_ = node.subscribe(topic_from_, 10, &TFRebroadcaster::tf_cb, this);
  pub_tf_ = node.advertise<tf2_msgs::TFMessage>(topic_to_, 10);
}

void TFRebroadcaster::tf_cb(const tf2_msgs::TFMessage & msg)
{
  // TODO(lsinterbotix): optimize
  // Loop over each parent/child frame
  for (const auto & frame : frames_) {
    // Loop over every transform in message
    for (auto & tf : msg.transforms) {
      // Check if parent and child match
      if (
        frame.parent_frame_id == tf.header.frame_id &&
        frame.child_frame_id == tf.child_frame_id)
      {
        // If they do match, rebroadcast to new topic, prepending the prefix if necessary
        auto tf_ = tf;
        tf2_msgs::TFMessage rebroadcast_tf;
        if (frame.prefix != "") {
          tf_.child_frame_id = frame.prefix + tf.child_frame_id;
          tf_.header.frame_id = frame.prefix + tf.header.frame_id;
        }
        rebroadcast_tf.transforms.push_back(tf_);
        pub_tf_.publish(rebroadcast_tf);
      }
    }
  }
}

int main(int argc, char** argv)
{
    ros::init(argc, argv, "tf_rebroadcaster");
    ros::AsyncSpinner spinner(2);
    spinner.start();
    ros::NodeHandle n;
    // Create instance of MoveIt interface
    TFRebroadcaster tf_rebroadcaster(&n);
    ros::waitForShutdown();
    return 0;
}
