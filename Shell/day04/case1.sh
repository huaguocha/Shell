#!/bin/bash
case $1 in
start)
    echo "The service is start!"
    ;;
stop)
    echo "The service is stop!"
    ;;
reload)
    echo "The service is reload!"
    ;;
*)
    echo "please input you want!"
    ;;
esac
