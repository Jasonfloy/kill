#! /bin/bash

kill(){
    process_name=$1
    ps -ef | grep $process_name | grep -v grep | grep -v kill.sh| grep -v vim | cut -c 9-15 | xargs kill -9
    echo "kill old $process_name"
}
