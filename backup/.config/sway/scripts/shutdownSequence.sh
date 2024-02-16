#!/bin/bash

echo "Are you sure you would like to shutdown? [y/n]: "
read response

if [[ $response == "y" ]]
then
  /sbin/shutdown now
fi
