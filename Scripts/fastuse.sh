#/bin/sh
sleep 5;
windowid=$(xdotool getactivewindow)
while true
do
  xdotool click --window $windowid 3
  sleep 0.01
done

