#! /bin/sh

LOOPIE=1
while [ $LOOPIE -le 2 ]
do 
	ping -c 1 TOSHIBA >/dev/null
	HOST1STATE=$?
	ping -c 1 ABIHSOT >/dev/null
	HOST2STATE=$?
	ping -c 1 TOSHRMS >/dev/null
	HOST3STATE=$?

	sleep 1
	clear
	echo "Command and Control of 3 Toshibas."

	if [ $HOST1STATE = 0 ]; then
		echo "HOST 1 (TOSHIBA): ONLINE"
	else
		echo "HOST 1 (TOSHIBA): OFFLINE"
	fi

	if [ $HOST2STATE = 0 ]; then
		echo "HOST 2 (ABIHSOT): ONLINE"
	else
		echo "HOST 2 (ABISHOT): OFFLINE"
	fi

	if [ $HOST3STATE = 0 ]; then
		echo "HOST 3 (TOSHRMS): ONLINE"
	else
		echo "HOST 3 (TOSHRMS): OFFLINE"
	fi
done