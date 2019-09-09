#!/bin/bash

function printCongratz() {
	echo "You guessed right"
}

echo "How many files are there in the directory of script ? :"
read userInput

noOfLines=`cat guessinggame.sh | wc -l`

while [[ ${noOfLines} -ne ${userInput} ]]
do
	if [[ ${noOfLines} -gt ${userInput} ]]
	then
		echo "Guess higher"
	else [[ ${noOfLines} -lt ${userInput} ]]
		echo "Guess lower"
	fi

	echo "Re-enter no of lines  :"
	read userInput
done

printCongratz

