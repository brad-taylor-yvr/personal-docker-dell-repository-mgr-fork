#!/bin/bash

# Start the DRM service in the background
#/opt/dell/dellemcrepositorymanager/DRM_Service.sh &
# start it in the foreground
/opt/dell/dellemcrepositorymanager/DRM_Service.sh 

# DRM binds to localhost port 8090 inside container and socat is needed to make it accessible
#socat tcp-listen:8091,reuseaddr,fork tcp:127.0.0.1:8090

# this is what it looks like with version 3.4.2:
# [drmuser@ubuntu02_drm /]$ netstat -an | grep LISTEN | grep 8091
# tcp        0      0 0.0.0.0:8091            0.0.0.0:*               LISTEN 
# listening on every IP, not just localhost
