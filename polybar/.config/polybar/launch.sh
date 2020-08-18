#Terminate running instances
killall -q polybar

#Wait until they are shut down
while pgrep -u $UID -x oplybar >/dev/null; do sleep 1; done

#Launch the example polybar
#polybar example
polybar top

echo "Bars launched"
