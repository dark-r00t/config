# Zsh Plugins
# NOTE: colored-man-pages may required debian-goodies (dman / debman)
#
# NOTE: zsh-autosuggestions requires an install
# 	github.com/zsh-users/zsh-autosuggestions/blob/master/INSTALL.md
#
# NOTE: zsh-syntax_highlighting requires an install
# 	github.com/zsh-users/zsh-syntax-highlighting/blob/master/INSTALL.md
plugins=(git colored-man-pages zsh-autosuggestions)


# Default Zsh Theme (aka prompt)
# ZSH_THEME="darkblood"


# Initializing Starship Prompt
# NOTE: requires an install
# 	https://starship.rs/
eval "$(starship init zsh)"


# Oh My Zsh :o
export ZSH="$HOME/.oh-my-zsh"


# Sources
source $ZSH/oh-my-zsh.sh
source $HOME/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh


# Adjust man-page Colors
# NOTE: idk how tf you do this, but thats the command
# less_termcap[md]="${fg_bold[red]}"


# Useful Aliases
alias bat="batcat"
alias debuu="sudo apt update; sudo apt upgrade"
alias ls="exa -al --color=always --group-directories-first --icons"
alias src=". ~/.zshrc"
alias untar='tar -xvf '
alias wget='wget -c '


# Convenience 
alias tmpmain="printf '#include <stdio.h>\n#include <stdlib.h>\n#include <string.h>\n#include <unistd.h>\n\nint main(void) {\n\n}' >> ~/Desktop/tmp/main.c"
alias tmpmake="printf 'run: main.c\n\t\$(CC) -Wall -o run main.c\n' >> ~/Desktop/tmp/Makefile"
alias tmpgit="git init && git add . && git commit -m \"skeleton\""
alias tmpc="mkdir ~/Desktop/tmp && cd ~/Desktop/tmp && tmpmain && tmpmake && tmpgit && ls"
alias tmpd="sudo rm -r ~/Desktop/tmp && cd ~/Desktop"
alias tmp="cd ~/Desktop/tmp && ls"


# Im not typing this shit out ever again...
alias yt="ytfzf -t --pages=5 --force-youtube --loop --async-thumbnails --ytdl-path=\'/usr/bin/yt-dlp\'"
alias ytvideo="yt --type=video"
alias ytmusic="ytvideo --audio-only"
alias ytchannel="yt --type=channel"
alias od="ytfzf -cO -t --odysee-video-count=100 --loop --async-thumbnails"


# MEME
alias fuckoff="sudo shutdown now"
alias brb="reboot"


