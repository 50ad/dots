#! /bin/bash
#   =----=----=----=----=----=----=----=----=----=----=----=
#
#       50ad/dots@gh                     Athreya Dravida
#       config/bash/scripts/mkall.sh            [v1.0.0]
#
#   =----=----=----=----=----=----=----=----=----=----=----=
#
startdir="$(pwd)"
if [[ -n "$1" ]]; then
    mapfile -t arr < "$1"
else
    mkdir -p "~/$XDG_CACHE_HOME/scripts"
    vim "$XDG_CACHE_HOME/scripts/tmp.txt"
    mapfile -t arr < "$XDG_CACHE_HOME/scripts/tmp.txt"
fi
echo ''
for i in "${arr[@]}"; do
    if [[ "${i:0-1}" == "/" ]]; then
        echo -e "\033[38;5;232;48;5;75m(+)\033[0m \033[3m$i\033[0m"
        mkdir -p "$i"
    else
        echo -e "\033[38;5;232;48;5;214m[+]\033[0m \033[3m$i\033[0m"
        IFS="/"; read -ar new <<< "$i"
        if [[ ${#new[@]} -lt 2 ]]; then
            touch "$i"
        else
            filename="${new[-1]}"
            unset "${new[-1]}"
            IFS="/" read -r pardirs <<< "${new[*]}"
            (mkdir -p "$pardirs" ; cd "$pardirs" || exit 0 ; touch "$filename"; cd "$startdir" || exit 0)
        fi
    fi
done
