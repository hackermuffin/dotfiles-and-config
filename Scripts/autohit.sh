#/bin/sh
sleep 5;
windowid=$(xdotool getactivewindow)
while true
do
  xdotool click --window $windowid 1
  sleep 2
done
