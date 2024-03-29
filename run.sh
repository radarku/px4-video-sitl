xhost +local:root

nvidia-docker run -it \
    --env="DISPLAY" \
    --volume="/tmp/.X11-unix:/tmp/.X11-unix:rw" \
    --volume="/tmp/mavlink:/tmp/mavlink" \
    -p5760:5760 --env HOST_IP=$1 \
    px4vid 

xhost -local:root
