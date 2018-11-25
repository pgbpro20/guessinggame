all: 
	touch README.md
	echo "Title: The World's Worst Guessing Game" > README.md
	echo "Date: " $(shell echo `date +'%Y-%m-%d'`) >> README.md
	echo "Number of lines of code: " $(shell wc -l guessinggame.sh) >> README.md
