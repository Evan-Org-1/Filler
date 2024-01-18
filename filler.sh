#!/bin/bash

dir="files"
mkdir $dir
                                                                                                               
for i in {1..5}
do
    for i in {1..1000}
    do
        randomNum=$(( ( RANDOM % 1000000 )  + 1 ))
        filename=$randomNum.txt
        cat LorumIpsum.txt > "$dir/$filename"
    done
    git add "$dir/$filename"
    git commit -m "Added $filename"
    
done

git push origin main

