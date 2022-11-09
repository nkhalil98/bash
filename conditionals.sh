#!/bin/bash

echo "Do you like bash? (y/n/idk)"
read likesbash
if [[ $likesbash == "y" ]]; then
    echo "Awesome!"
elif [[ $likesbash == "idk" ]]; then
    echo "You should learn bash. It's cool!"
else
    echo "Boo!"
fi

echo "Choose a random number between 1 and 3"
read number
case $number in 
    1)
        college="MIT"
        major="Computer Science"
        special_skill="Power Naps"
        ;;
    2)
        college="Harvard"
        major="Political Science"
        special_skill="Being Rich"
        ;;
    3)
        college="CALTECH"
        major="Physics"
        special_skill="Research"
        ;;
esac
echo "Fun fact: $college students major in $major and they are good at $special_skill"