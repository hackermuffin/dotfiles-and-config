#!/bin/bash

# A script to start a minecraft server in a screen terminal

name='minecraft-server'   # Name for the screen terminal
path="~/minecraft-server" # Path for the server jar
jar='server.jar'          # Jar file name
min=3G                    # Minimum RAM
max=3G                    # Maximum RAM
jvm=""                    # JVM arguments

screen -x $name || { cd $path; screen -S $name bash -c "while :; do java -Xms${min} -Xmx${max} ${jvm} -jar ${jar} nogui; echo 'Server down. Press Ctrl+C to stop reboot'; sleep 10; done"; } 
