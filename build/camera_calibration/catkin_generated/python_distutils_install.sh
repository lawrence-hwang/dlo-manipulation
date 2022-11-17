#!/bin/sh

if [ -n "$DESTDIR" ] ; then
    case $DESTDIR in
        /*) # ok
            ;;
        *)
            /bin/echo "DESTDIR argument must be absolute... "
            /bin/echo "otherwise python's distutils will bork things."
            exit 1
    esac
fi

echo_and_run() { echo "+ $@" ; "$@" ; }

echo_and_run cd "/home/drojas/lawrence_wire/src/image_pipeline/camera_calibration"

# ensure that Python install destination exists
echo_and_run mkdir -p "$DESTDIR/home/drojas/lawrence_wire/install/lib/python3/dist-packages"

# Note that PYTHONPATH is pulled from the environment to support installing
# into one location when some dependencies were installed in another
# location, #123.
echo_and_run /usr/bin/env \
    PYTHONPATH="/home/drojas/lawrence_wire/install/lib/python3/dist-packages:/home/drojas/lawrence_wire/build/camera_calibration/lib/python3/dist-packages:$PYTHONPATH" \
    CATKIN_BINARY_DIR="/home/drojas/lawrence_wire/build/camera_calibration" \
    "/usr/bin/python3" \
    "/home/drojas/lawrence_wire/src/image_pipeline/camera_calibration/setup.py" \
    egg_info --egg-base /home/drojas/lawrence_wire/build/camera_calibration \
    build --build-base "/home/drojas/lawrence_wire/build/camera_calibration" \
    install \
    --root="${DESTDIR-/}" \
    --install-layout=deb --prefix="/home/drojas/lawrence_wire/install" --install-scripts="/home/drojas/lawrence_wire/install/bin"
