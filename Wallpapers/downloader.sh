#!/bin/bash

wallpaper_path=~/Wallpapers
urls=(\
  "https://i.redd.it/nqyy52kvkko71.jpg" \
  "https://wallpaper.dog/download-wallpaper/20459078_1920x1080" \
  "https://wallpaperaccess.com/download/1920x1080-4k-2638338" \
  "https://ze-robot.com/images/my/my-friend-asked-why-i-was-staring-at-my-desktop.-he-just-doesn't-realise-1920%C3%971080.jpg" \

)

for url in ${urls[@]}
do
  echo "Downloading from '$url' to $wallpaper_path..."
  wget --user-agent="Mozilla" -P $wallpaper_path $url
  echo
done

