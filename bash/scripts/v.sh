#! /bin/bash
#   =----=----=----=----=----=----=----=----=----=----=----=
#
#       50ad/dots@gh                     Athreya Dravida
#       config/bash/scripts/v.sh                [v1.0.0]
#
#   =----=----=----=----=----=----=----=----=----=----=----=
#
if [[ "$1" ]]; then
    vim "$1"
else
    fzf="$(fzf)"
    if [[ $fzf ]]; then
        vim "$fzf"
    fi
fi