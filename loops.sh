#!/bin/bash

x=1
while [[ $x -le 10 ]]
do
    read -p "counting: $x. Press enter to continue..."
    ((x++))
done
echo "That's how you count to ten!"

for i in {1..10};
do
    echo "counting again: $i"
    sleep 0.2
done

until [[ $college == "MIT" ]]
do
    echo "What is the best college in the world?"
    read college
done
echo "Of course it's MIT!"