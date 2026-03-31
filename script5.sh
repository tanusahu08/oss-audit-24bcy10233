#!/bin/bash
is_number() {
    [[ $1 =~ ^-?[0-9]+(\.[0-9]+)?$ ]]
}

read -p "Enter first number: " num1
if ! is_number "$num1"; then
    echo "Error: '$num1' is not a valid number."
    exit 1
fi


read -p "Enter second number: " num2
if ! is_number "$num2"; then
    echo "Error: '$num2' is not a valid number."
    exit 1
fi


sum=$(echo "$num1 + $num2" | bc)

echo "The sum of $num1 and $num2 is: $sum"
