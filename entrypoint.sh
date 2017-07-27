#!/bin/bash

if [[ -z $USERNAME && -z $PASSWORD ]]
then
   echo You must provide env var USERNAME, PASSWORD
   exit 0
fi

DEVICE=${DEVICE:-$(echo $USERNAME | cut -d @ -f 1 | sed 's/\./-/' | sed 's/_//')}

# Launch spotifyd in background
spotifyd -u $USERNAME -p $PASSWORD --device_name $DEVICE

exec spotifyd-http -u $USERNAME -p $PASSWORD -n `hostname`

