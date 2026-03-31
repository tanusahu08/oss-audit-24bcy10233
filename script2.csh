#!/bin/bash

read -p "Enter file name: " filename
if [ -f "$filename" ]; then
    echo "File '$filename' exists."
else
    echo "File '$filename' does not exist."
fi
