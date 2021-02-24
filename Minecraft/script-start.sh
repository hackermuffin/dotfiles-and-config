#!/bin/bash

# A script designed to start a minecraft server with an existing (and probably
# better start script in a screen terminal

name='minecraft-server'
path="$HOME/minecraft-server"
scriptname='ServerStart.sh'

screen -x $name || { cd $path; screen -S $name bash -c "while :; do bash $scriptname; echo 'Server down. Press Ctrl+C to stop reboot'; sleep 10; done"; }
