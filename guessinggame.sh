#!/bin/bash
# Function to count files in the current directory
function count_files {
  ls -1 | wc -l
}
# Main game loop
file_count=$(count_files)
while true; do
  echo "Guess the number of files in the current directory:"
  read guess

  if [[ $guess -lt $file_count ]]; then
    echo "Your guess is too low."
  elif [[ $guess -gt $file_count ]]; then
    echo "Your guess is too high."
  else
    echo "Congratulations! You guessed the correct number."
    break
  fi
done
