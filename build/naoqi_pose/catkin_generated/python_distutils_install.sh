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
    DESTDIR_ARG="--root=$DESTDIR"
fi

echo_and_run() { echo "+ $@" ; "$@" ; }

echo_and_run cd "/home/mivia/cog2020_group11/src/naoqi_bridge/naoqi_pose"

# ensure that Python install destination exists
echo_and_run mkdir -p "$DESTDIR/home/mivia/cog2020_group11/install/lib/python2.7/dist-packages"

# Note that PYTHONPATH is pulled from the environment to support installing
# into one location when some dependencies were installed in another
# location, #123.
echo_and_run /usr/bin/env \
    PYTHONPATH="/home/mivia/cog2020_group11/install/lib/python2.7/dist-packages:/home/mivia/cog2020_group11/build/naoqi_pose/lib/python2.7/dist-packages:$PYTHONPATH" \
    CATKIN_BINARY_DIR="/home/mivia/cog2020_group11/build/naoqi_pose" \
    "/usr/bin/python2" \
    "/home/mivia/cog2020_group11/src/naoqi_bridge/naoqi_pose/setup.py" \
    build --build-base "/home/mivia/cog2020_group11/build/naoqi_pose" \
    install \
    $DESTDIR_ARG \
    --install-layout=deb --prefix="/home/mivia/cog2020_group11/install" --install-scripts="/home/mivia/cog2020_group11/install/bin"
