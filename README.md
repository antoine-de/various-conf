various-conf
============

various configurations (vimrc, bashrc, ...)

This setup needs xstow
 
`xstow -target ~/ [program]`

like

`xstow -target ~/ vim`

the setup also uses ZSH and a prezto's fork (https://github.com/antoine-de/prezto)

and at the end of the .zshrc 
```
# custom stuff
source "${ZDOTDIR:-$HOME}/.zprezto/init.zsh"

source $HOME/.aliases
```