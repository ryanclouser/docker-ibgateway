#!/bin/bash
Jts/ibgateway/*/ibgateway $ARGS &
if grep -q 'tradingMode=p' Jts/jts.ini
then
	sleep 15
	xte 'key Return'
fi
wait
