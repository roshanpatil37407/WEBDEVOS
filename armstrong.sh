#!/bin/bash

# Read the number from the user
echo "Enter a number: "
read number

# Store the original number in a separate variable
original=$number

# Calculate the number of digits in the number
num_digits=${#number}

# Initialize a variable to store the sum of digits raised to the power of num_digits
sum=0

while [ $number -gt 0 ]; do
    digit=$((number % 10))
    power_of_digit=$(echo "$digit^$num_digits" | bc)
    sum=$((sum + power_of_digit))
    number=$((number / 10))
done

# Check if the original number is equal to the sum
if [ $original -eq $sum ]; then
    echo "The number is an Armstrong number."
else
    echo "The number is not an Armstrong number."
fi
