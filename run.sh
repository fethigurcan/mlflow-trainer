#!/bin/bash
function finish {
    RUNID=`cat tty_logs.txt | grep -o -m 1 "run with ID '[0-9a-f]\+" | grep -o "[0-9a-f]\+"`
    if [ -z "$RUNID" ]
    then
        echo "ERROR: There is no mlflow run id to log tty_logs.txt!"
    else
        #echo $RUNID
        mlflow artifacts log-artifact -r $RUNID -l tty_logs.txt
    fi
}
trap finish EXIT

mlflow run $@ 2>&1 | tee -a tty_logs.txt
