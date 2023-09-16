# - - - - - - - - - - - - - - - - - EXPORTS - - - - - - - - - - - - - - - - - - - -

export ZSH="$HOME/.oh-my-zsh"
export PNPM_HOME="$HOME/.local/share/pnpm"
export PATH=$PATH:"$HOME/.spicetify"
export "MICRO_TRUECOLOR=1"

ZSH_THEME="CosOS"
plugins=(git zsh-syntax-highlighting fast-syntax-highlighting zsh-autosuggestions)
source $ZSH/oh-my-zsh.sh

case ":$PATH:" in
  *":$PNPM_HOME:"*) ;;
  *) export PATH="$PNPM_HOME:$PATH" ;;
esac

export EDITOR=micro
export PATH="$PATH:$HOME/go/bin"

[ -s "$HOME/.bun/_bun" ] && source "$HOME/.bun/_bun"
export BUN_INSTALL="$HOME/.bun"
export PATH="$BUN_INSTALL/bin:$PATH"

# - - - - - - - - - - - - - - - - - ALIASES - - - - - - - - - - - - - - - - - - - -

alias spotdl='python3 -m spotdl'

alias fh='clear && neofetch --ascii $HOME/.config/neofetch/ascii.txt'

alias pc='pwncat-cs -lp'

alias upd='sudo nala update && sudo nala upgrade'

alias battery='upower -i $(upower -e | grep BAT) | grep --color=never -E "state|to\ full|to\ empty|percentage"'

alias f='pyaview'

alias ff='pyaview . -a'

alias m='micro'

alias yt='yt-dlp --extract-audio --audio-format mp3 --output "%(title)s.%(ext)s"'

alias cutter='$HOME/Documents/AppImages/Cutter*.AppImage'

alias clearram=' 
    sudo sysctl vm.drop_caches=3 && \
    sudo swapoff -a && sudo swapon -a && \
    sudo apt clean && \
    sudo apt autoclean && \
    sudo apt autoremove
'

alias clearapps='
    sudo killall Discord spotify micro code telegram-desktop DiscordCanary cmus firefox-bin picom micro polybar flameshot mailspring alacritty
'

alias sysclear='
    clearram; \ 
    clearapps
'
