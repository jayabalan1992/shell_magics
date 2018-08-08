# This Bash script can be posted oin /usr/bin and make it executable. It can kill the docker images and containers.
#!/bin/bash
function input()
{
    read -p "Are you sure? " -n 1 -r
}
dockps=$( docker ps -aq)
case "$1" in
    all)
        echo "WARNING!!! This command will kill all the docker images and currently running containers"
        echo
        input 
        if [[ $REPLY =~ ^[Yy]$ ]]
        then
        docker rmi $(docker images -aq)
        docker rm $dockps
        fi
        ;;
    cntr)
        echo "Warning!!! Stops the running container and remove them. yes to continue...?"
        input
        if [[ $REPLY =~ ^[Yy]$ ]]
        then
        docker stop $dockps
        docker rm $dockps
        ng fi
        ;;
    images)
        echo "Warning!!! Remove all the docker images. yes to continue...?"
        input
        if [[ $REPLY =~ ^[Yy]$ ]]
        then
        docker rmi $dockps
        fi
        ;;
    help)
        echo 
        echo """all - Delete all the docker images and docker containers. Use it with Caution!
                cntr - Delete all the uontainers after stopping them"""
        ;;
    *)
        echo "Requires argument. help for more options"
        exit 1
esac
