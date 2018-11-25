# !usr/bin/env bash
# File: guessinggame.sh

function check_number_of_files () {
	if [[ $1 = $(ls -1 | wc -l) ]]
	then
		echo 1
	else
		echo 0
	fi
}


correct_guess=0
while [ $correct_guess -eq 0 ]
do
	echo "Guess the number of files in the current directory, followed by [ENTER]:"
	read number_of_files
	if [[ $(check_number_of_files $number_of_files) = 1 ]]
	then
		correct_guess=1
		echo "you have guessed correctly, program will exit!"
	else
		echo "you have guessed incorrectly, program will continue"
	fi
done


