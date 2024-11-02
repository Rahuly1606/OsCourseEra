#!/bin/bash

# Function to count files in the current directory
function count_files {
  echo $(ls -1 | wc -l)
}

# Get the actual file count
file_count=$(count_files)
guess=-1

# Game loop
echo "Welcome to the Guessing Game!"
while [[ $guess -ne $file_count ]]; do
  echo "How many files are in the current directory?"
  read guess

  if [[ $guess -lt $file_count ]]; then
    echo "Your guess is too low."
  elif [[ $guess -gt $file_count ]]; then
    echo "Your guess is too high."
  else
    echo "Congratulations! You guessed it right!"
  fi
done
