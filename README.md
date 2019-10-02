
PX4 Video SITL
==============

This Docker Container spins-up a PX4 SITL and exports a representative video stream from the platform

![PX4 Video SITL](https://raw.githubusercontent.com/radarku/px4-video-sitl/master/px4-video-sim3-2019-06-25_15.51.50.mp4)

Usage
-----

To build the container

```
chmod +x build.sh
./build.sh
```

To run the container

```
chmod +x run.sh
./run.sh 192.168.1.144
```

...where 192.168.1.144 is the IP address of your GCS for the destination of the video stream.

Setup your GCS to read QGC format video on port 5600 and connect to a TCP MAVLink stream on port 5760.

Dependencies
------------

The run.sh script relies upon having a hardware accelerated host; I use nvidia-docker.

Instructions for setting up and testing nvidia-docker can be found at

https://github.com/NVIDIA/nvidia-docker


Notes
-----

This project also has the base framework enabled for forwarding X11 through docker



