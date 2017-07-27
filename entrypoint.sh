#!/bin/bash

if [[ -z $USERNAME && -z $PASSWORD ]]
then
   echo You must provide env var USERNAME, PASSWORD
   exit 0
fi

spotifyd -u $USERNAME -p $PASSWORD --device_name $USERNAME

exec spotifyd-http -u $USERNAME -p $PASSWORD -n `hostname`

