#!/bin/bash
GPU=0 bash ./dlc-docker run -d -p 8888:8888 -v /deeplabcut:/deeplabcut -e USER_HOME=/deeplabcut --name deeplabcut motorns/deeplabcut
