#!/bin/sh

comp() {
    g++ ./$1.cpp -o $1
    ./$1

    echo "----------------------------------"
    echo "return? y : n"
    read hoge
    echo "----------------------------------"
    if [ "${hoge}" = "y" ]
    then
        return 1
    else
        return 0
    fi
}

comp $@
hoge=$?
while [ "${hoge}" = 1 ] 
do
    comp $@
    hoge=$?
done

