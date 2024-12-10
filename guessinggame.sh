#!/bin/bash

# Function to count the number of files in the current directory
function count_files {
    echo $(ls -1 | wc -l)
}

# Start of the game
echo "Welcome to the Guessing Game!"
file_count=$(count_files)

while true; do
    echo "How many files are in the current directory? Enter your guess:"
    read guess

    if [[ $guess -eq $file_count ]]; then
        echo "Congratulations! You guessed it right!"
        break
    elif [[ $guess -lt $file_count ]]; then
        echo "Your guess is too low. Try again."
    else
        echo "Your guess is too high. Try again."
    fi
done
