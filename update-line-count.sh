#!/bin/bash

# This script updates the "line count" column in the README.md file for each day's
# Advent of Code challenge in the repository.

# Navigate to the root of the repository
cd $(dirname "$0")

# Get the line count for each file and store in a variable
day1_my_results=$(wc -l < "./day1/my_results.ipynb")
day4_chatGPT_results=$(wc -l < "./day4/chatGPT_results.ipynb")

# Update the "line count" column in the README.md file with the correct line count
# for each file
sed -i "s/| 15 |/${day1_my_results} |/g" README.md
sed -i "s/| 12 |/${day4_chatGPT_results} |/g" README.md
