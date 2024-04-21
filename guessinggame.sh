#!/bin/bash

# Function to get the number of files in the current directory
get_file_count() {
    local count=$(ls -1 | wc -l)
    echo "$count"
}

# Main function
main() {
    local files=$(get_file_count)
    local guess=-1

    while [[ $guess -ne $files ]]; do
        read -p "How many files are in the current directory? " guess

        if [[ $guess -lt $files ]]; then
            echo "Your guess is too low."
        elif [[ $guess -gt $files ]]; then
            echo "Your guess is too high."
        fi
    done

    echo "Congratulations! You guessed the correct number of files: $files"
}

# Call the main function
main

