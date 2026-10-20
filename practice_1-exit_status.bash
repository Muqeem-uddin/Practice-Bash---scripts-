#!/bin/bash

ls -l /root/muqeem/scripts

if [ $? -eq 0 ]
then
echo File exist
else
echo File does not exist
fi
