#!/bin/bash

if [ `whoami` == 'root' ]
then
ln ~/.profile.d/profile ~/.profile
ln ~/.profile.d/bashrc ~/.bashrc
cp ~/.profile.d/bashrc /etc/bashrc
else
    echo "You must be root to install."
fi