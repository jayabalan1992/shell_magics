# This shell script ssh into the hosts in the hosts file and execute the commands passed as arguments to this script
#!/bin/bash
input="./hosts"
while IFS read -r host
do 
  ssh $host << EOF
    $1
    $2
  EOF
done < "$input"

