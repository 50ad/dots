#! /bin/bash
#   =----=----=----=----=----=----=----=----=----=----=----=
#
#       50ad/dots@gh                     Athreya Dravida
#       config/bash/scripts/mk.sh               [v1.0.0]
#
#   =----=----=----=----=----=----=----=----=----=----=----=
#
evaluate() {
    if [[ $1 =~ /$ ]]; then
        mkdir "$1"
    elif [[ $1 =~ \.* ]]; then
        touch "$1"
    else
        touch "$1"
    fi
}

if [[ -n $1 ]]; then
    evaluate "$1"
fi

if [[ -n $2 ]]; then
    evaluate "$2"
fi

if [[ -n $3 ]]; then
    evaluate "$3"
fi
if [[ -n $4 ]]; then
    evaluate "$4"
fi
if [[ -n $5 ]]; then
    evaluate "$5"
fi
if [[ -n $6 ]]; then
    evaluate "$6"
fi
if [[ -n $7 ]]; then
    evaluate "$7"
fi
if [[ -n $8 ]]; then
    evaluate "$8"
fi
if [[ -n $9 ]]; then
    evaluate "$9"
fi