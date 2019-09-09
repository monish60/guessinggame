#!/bin/bash

function printCongratz() {
	echo "You guessed right"
}

echo "How many files are there in the directory of script ? :"
read userInput

noOfFiles=`find . -maxdepth 1 -type f | wc -l`

while [[ ${noOfFiles} -ne ${userInput} ]]
do
	if [[ ${noOfFiles} -gt ${userInput} ]]
	then
		echo "Guess higher"
	else [[ ${noOfFiles} -lt ${userInput} ]]
		echo "Guess lower"
	fi

	echo "Re-enter no of lines  :"
	read userInput
done

printCongratz

