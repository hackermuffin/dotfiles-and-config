#/bin/sh
sleep 5;
windowid=$(xdotool getactivewindow)
while true
do
  echo "Hello World"
  xdotool keydown --window $windowid w
  sleep 2
done
