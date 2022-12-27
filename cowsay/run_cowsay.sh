#!/bin/bash 

# Uncomment below to debug:
# set -x 

while true; do
    read -p "Enter a message for cowsay (or 'exit' to quit or '-l' for list of animals): " message
    if [ "$message" == "exit" ]; then
        exit
    elif [ "$message" == "-l" ]; then
        /usr/games/cowsay -l
    elif [ "$message" == "" ]; then
        echo "You did not enter a message!"
        continue
    else
        read -p "Enter an animal for cowsay (or default to cow) " animal
        if [ "$animal" == "" ]; then
            /usr/games/cowsay "$message"
        else 
        /usr/games/cowsay -f $animal "$message"
        fi
    fi
done

# To run the script within the same container after exiting:
# start the container
# run the command: docker exec -it <container-ID or name> /usr/local/bin/run_cowsay.sh