#!/bin/bash

set -x # set debug mode
set -e # exit if any error
set -o pipefail

FREE_SPACE=$(free -mt | grep "Total" | awk '{print $4}')

TH=3000

if [[ $FREE_SPACE -lt $TH ]]
then
        echo "WARNING , RAM is running low"
        else
                echo "RAM Space is sufficient $FREE_SPACE M "
                fi



df -h

ewrwerwerwer | echo "Devops Demo"

free -g
