#!/bin/bash

# dict
function dict 
{
    echo find $1 ...
    w3m dict.cn/$1
    echo done
}

# lg++
function lg++ 
{
    g++ -fexec-charset=utf-8 -O2 -o $2 $1 -lGL -lGLU -lglut
    ./$2
}

# mg++
function mg++
{
    g++ -fexec-charset=utf-8 -O2 -o $2 $1 -lGL -lGLU -lglut
    ./$2
}

# swap file
function swap
{
    cp $1 ${1}.swap
    mv ${1}.bk $1
    mv ${1}.swap ${1}.bk
}
    
# openmp
function og++
{
    g++ -fopenmp -O2 -o $2 $1 
    ./$2
}

# pg++
function pg++
{
    g++ -pthread -O2 -o $2 $1 
    ./$2
}

function oppt
{
    pandoc $1 -o $2 -t dzslides -s
    google-chrome $2
}

# ACM cmp
function tt
{
    while true; do
        ./$1 < input > output.a
        diff output.a output
        if [ $? -ne 0 ] ; then break; fi
    done
}
