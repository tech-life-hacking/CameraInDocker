docker run -it \
             --privileged \
             --env="DISPLAY=$DISPLAY" \
             --env="QT_X11_NO_MITSHM=1" \
             --device /dev/video0:/dev/video0:mwr \
             --volume="/tmp/.X11-unix:/tmp/.X11-unix:rw" \
             --volume="$HOME/ws/:/home/" \
             --name="test" \
             --gpus all \
             dockerfile_test:latest