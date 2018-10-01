#!/bin/bash
function pingme()
{
  for i in $( cat $1 );
  do
  ping -c 2 $i > /dev/null
    if [ $? -eq 0 ]
     then
       echo "$i pinging"
     else
        echo "$i not pinging"
    fi
  done
}

pingme  $1

