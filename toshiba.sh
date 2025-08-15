#! /bin/sh

TOSHIBApassword="qaz"
HOSTNAME1="TOSHIBA"
HOSTNAME2="ABIHSOT"
HOSTNAME3="TOSHRMS"

xfce4-terminal --geometry 90x60+0+0 -T HOST1 --hide-menubar --hide-scrollbar -x sshpass -p $TOSHIBApassword ssh $HOSTNAME1 &
xfce4-terminal --geometry 90x60+640+0 -T HOST2 --hide-menubar --hide-scrollbar -x sshpass -p $TOSHIBApassword ssh $HOSTNAME2 &
xfce4-terminal --geometry 90x60+1320+0 -T HOST3 --hide-menubar --hide-scrollbar -x sshpass -p $TOSHIBApassword ssh $HOSTNAME3 &

xfce4-terminal -T "CONTROL&COMMAND" --hide-menubar --hide-scrollbar -x /home/$USER/Desktop/controlandcommand.sh &