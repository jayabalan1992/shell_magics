#!/bin/bash
cmd=$(/sbin/ifconfig ens33 | grep 'inet [0-9]*' | awk {'print $2'} | egrep '[0-9]+\.[0-9]+\.[0-9]+')
echo $cmd
