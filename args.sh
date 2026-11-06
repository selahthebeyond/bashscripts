#!/bin/bash

echo "File name: $0."
echo "Arguments: $@."
echo "Number of arguments entered: $#."

if [[ $# == 2 ]]; then
	echo "Hello $1 from $2!"
else
        read -p "Shift arguments(y/n)? " CHOICE
        if [[ $CHOICE == "y" || $CHOICE == "Y" ]]; then
		shift
		echo "Hello $1 from $2!"
	elif [[ $CHOICE == "n" || $CHOICE == "N" ]]; then
		echo "Number of arguments(2) to be received exceeded or not entered ."
		echo "Usage: ./args.sh <name> <city>."
	else
		echo "Invalid entry."
	fi
fi
