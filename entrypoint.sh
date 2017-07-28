#!/bin/bash

if [[ -z $USERNAME && -z $PASSWORD ]]
then
   echo You must provide env var USERNAME, PASSWORD
   exit 0
fi

# Launch spotifyd-http in background
spotifyd-http -u $USERNAME -p $PASSWORD -n `hostname`

