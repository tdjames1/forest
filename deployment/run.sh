#! /bin/bash

# TODO this should be in a loop

mkdir -p ~/s3/stephen-sea-public-london
goofys stephen-sea-public-london ~/s3/stephen-sea-public-london

export BOKEH_APPS_DIR=/opt/bokeh_apps
if [ -z "$PUBLIC_IP" ]
then
    bokeh serve --port 8888 ${BOKEH_APPS_DIR}/*
else
    bokeh serve --allow-websocket-origin $PUBLIC_IP:8888 --port 8888 ${BOKEH_APPS_DIR}/*
fi