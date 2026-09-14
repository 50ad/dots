#   =----=----=----=----=----=----=----=----=----=----=----=
#
#       50ad/dots@gh                     Athreya Dravida
#       config/zsh/plugins.zsh                  [v1.0.0]
#
#   =----=----=----=----=----=----=----=----=----=----=----=
#
zinit light-mode for \
    aubreypwd/zsh-plugin-fd \
    azizoid/zsh-mkcd
zinit wait lucid for \
    hlissner/zsh-autopair \
    zsh-users/zsh-autosuggestions \
    zsh-users/zsh-syntax-highlighting

zinit ice lucid wait"0" as"program" from"gh-r" pick"bit"
zinit light "chriswalz/bit"
zinit ice pick"async.zsh" src"pure.zsh"
zinit light sindresorhus/pure