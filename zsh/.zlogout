#   =----=----=----=----=----=----=----=----=----=----=----=
#
#       50ad/dots@gh                     Athreya Dravida
#       config/zsh/zlogout                      [v1.0.0]
#
#   =----=----=----=----=----=----=----=----=----=----=----=
#
clear
if pgrep -u "$USER" -o; then
    pkill -u "$USER"
    echo "Please Wait..."
    sleep 5
    if pgrep -u "$USER" -o; then
        clear
        pkill -9 -u "$USER"
    fi
fi