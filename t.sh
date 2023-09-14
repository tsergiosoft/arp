#!/bin/bash
tunnel_chk() {

    # Your Individual SSH Connection Info.
	# PEM_LOC is optional parameter for SSH login.
    PEM_LOC="~/.ssh/tunaws.pem"
    ID="ubuntu"
    ADDR="34.118.38.72"
    PORT="5000"

    PEMSTR=""
    if [ -n "$PEM_LOC" ]; then
        PEMSTR="-i $PEM_LOC"
    fi

    if [ $1 = "L" ]; then
        foo="$(echo > /dev/tcp/localhost/$2)"
        if [ $? != 0 ]; then # port is close
            bar="$(pkill -f $2:$3:$4)"
            ssh -fN $PEMSTR -L $2:$3:$4 $ID@$ADDR -p $PORT
        fi
    else
        foo="$(echo > /dev/tcp/$ADDR/$2)"
        if [ $? != 0 ]; then # port is close
            bar="$(pkill -f $2:$3:$4)"
            ssh -N $PEMSTR -R $2:$3:$4 $ID@$ADDR -p $PORT -v
        fi
    fi
}

# Usage
# tunnel_chk L/R port:host:port timeout_interval
# You can add multiple lines of this functions: SSH tunneling connections.
tunnel_chk R 14550 localhost 8080
