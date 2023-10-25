#!/bin/bash

# Check if a user is logged in
if who | grep -q "^$USER "; then
    echo "Hello, $USER! You are logged in."
else
    echo "You are not logged in, $USER."
fi
