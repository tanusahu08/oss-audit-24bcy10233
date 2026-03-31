#!/bin/bash

while true; do
    echo "=============================="
    echo "        MAIN MENU"
    echo "=============================="
    echo "1. Show Current Date and Time"
    echo "2. Show Current Directory"
    echo "3. List Files in Current Directory"
    echo "4. Show Disk Usage"
    echo "5. Exit"
    echo "=============================="

    # Read user choice
    read -p "Enter your choice [1-5]: " choice

    case $choice in
        1)
            echo "Current date and time: $(date)"
            ;;
        2)
            echo "You are in: $(pwd)"
            ;;
        3)
            echo "Files in current directory:"
            ls -l
            ;;
        4)
            echo "Disk usage:"
            df -h
            ;;
        5)
            echo "Exiting... Goodbye!"
            exit 0
            ;;
        *)
            echo "Invalid choice! Please enter a number between 1 and 5."
            ;;
    esac
    echo ""
done