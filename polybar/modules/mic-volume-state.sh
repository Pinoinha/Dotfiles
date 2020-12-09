#!/bin/sh

if [ -z "$1" ]
then
  volume=$(pacmd list-sources | grep "\* index:" -A 7 | grep "volume" | awk -F/ '{print $2}')
else
  volume=$(pacmd list-sources | grep "$1" -A 6 | grep "volume" | awk -F/ '{print $2}')
fi

no=$(echo "no")

muted=$(pacmd list-sources | grep -e '* index:' -A 11 | grep -Po  '(?(?<=muted: )(.*))')

if [ "$muted" == "$no" ]
then
	if [ -z "$volume" -a "$muted" = "$no" ]
	then
	  echo "No Mic Found"
	else
	  echo "$volume"
	fi
else
	echo "Muted"
fi
