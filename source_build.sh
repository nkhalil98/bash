#!/bin/bash

echo "WELCOME!"
firstline=$(head -n 1 source/changelog.md)
read -a splitfirstline <<< $firstline
version=${splitfirstline[1]}
echo "Current version is $version"
echo "Do you want to make a change to the verion (enter "1" for yes, "0" for no)"
read versioncontinue
if [ $versioncontinue -eq 1 ]
  then
    echo "OK"
    files=source/*
      for file in $files
        do
        if [ "$file" == "source/secretinfo.md" ]
          then
            echo "Not copying" $file
          else
            echo "Copying" $file
            cp $file build/.
        fi
      done
    else
      echo "Please come back when you are ready"
fi
cd build/
echo "Build version $version contains:"
ls
cd ..