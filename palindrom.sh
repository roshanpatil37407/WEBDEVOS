#!/bin/bash

# Read the number from the user
echo "Enter a number: "
read number

# Store the original number in a separate variable
original=$number

# Initialize a variable to store the reverse of the number
reverse=0

while [ $number -gt 0 ]; do
    remainder=$((number % 10))
    reverse=$((reverse * 10 + remainder))
    number=$((number / 10))
done

# Check if the original number is equal to its reverse
if [ $original -eq $reverse ]; then
    echo "The number is a palindrome."
else
    echo "The number is not a palindrome."
fi
