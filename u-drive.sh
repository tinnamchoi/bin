#!/bin/bash

echo Enter student ID
read sid
echo Mounting for $sid...
sudo mount -t cifs -o username=$sid,uid=1000,gid=1000 //uofa/users$/users${sid: -1}/$sid ~/$sid/
echo Done.
