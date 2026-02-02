# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.

# Add RVM to PATH for scripting. Make sure this is the last PATH variable change.
export PATH="$PATH:$HOME/.rvm/bin"
export GEM_HOME="$(ruby -e 'puts Gem.user_dir')"
export PATH="$PATH:$GEM_HOME/bin"
export GOPATH=$HOME/go
export PATH=$PATH:$GOPATH/bin
TEX_BIN_PATH="/usr/local/texlive/2025/bin/x86_64-linux"
source /usr/share/zsh/plugins/zsh-autosuggestions/zsh-autosuggestions.plugin.zsh
source /home/Anchovy/Desktop/zsh-syntax-highlighting/zsh-syntax-highlighting.plugin.zsh
source /home/Anchovy/Desktop/zsh-autocomplete/zsh-autocomplete.plugin.zsh
export EDITOR=nvim

eval "$(zoxide init zsh)"
# Manual aliases
alias ll='eza --group-directories-first'
alias la='eza -a'
alias lla='lsd -lha --group-dirs=first'
alias ls='eza'
alias cat='bat --theme OneHalfDark'
alias host='sudo nvim /etc/hosts'
alias size='feh --bg-scale --randomize /home/Anchovy/random'
alias theme='feh --randomize --bg-scale /home/Anchovy/Desktop/koichi'
alias font='kitty +list-fonts'
alias mapi=' sudo grc nmap -p- -sS --min-rate 5000 --open -vvv -n -PE'
alias mapi2='grc nmap -sC -sV -p- -T4 -Pn'
alias sudo='sudo -E'
alias focus='~/Scripts/focus-pocus.sh focus-time'
alias chill='~/Scripts/focus-pocus.sh chill'
alias tree='eza -T'

#Color grc

alias ip='grc ip'
alias nmap='grc nmap'
alias ping='grc ping'
alias gobuster='grc gobuster'
alias vpn="sudo openvpn /home/Anchovy/HTB/lab_Anchovy317.ovpn"
alias cl="copy-last"

eval "$(oh-my-posh init zsh --config /usr/share/oh-my-posh/themes/pure.omp.json)"
# allports
function extractPorts(){
	ports="$(cat $1 | grep -oP '\d{1,5}/open' | awk '{print $1}' FS='/' | xargs | tr ' ' ',')"
	ip_address="$(cat $1 | grep -oP '\d{1,3}\.\d{1,3}\.\d{1,3}\.\d{1,3}' | sort -u | head -n 1)"
	echo -e "\n[*] Extracting information...\n" > extractPorts.tmp
	echo -e "\t[*] IP Address: $ip_address"  >> extractPorts.tmp
	echo -e "\t[*] Open ports: $ports\n"  >> extractPorts.tmp
	echo $ports | tr -d '\n' | xclip -sel clip
	echo -e "[*] Ports copied to clipboard\n"  >> extractPorts.tmp
	cat extractPorts.tmp; rm extractPorts.tmp
}
export POETRY_CACHE_DIR=~/.cache/pypoetry

function mkt(){
	mkdir {Scripts,Content,Exploits,Img}
}


[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh

# Copy last command

copy-last() {
  local output
  output="$(fc -ln -1 | bash)"
  echo "$output" | xclip -sel clip
  echo "Nice"
}


# Created by `pipx` on 2025-02-18 07:18:32
export PATH="$PATH:/home/Anchovy/.local/bin":




export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

export LESS_TERMCAP_us=$'\E[01;32m'
export LESS_TERMCAP_ue=$'\E[0m'
export LESS_TERMCAP_so=$'\E[01;32m'
export LESS_TERMCAP_se=$'\E[0m'
export LESS_TERMCAP_md=$'\E[01;32m'
export LESS_TERMCAP_me=$'\E[0m'

# CRUCIAL: Habilitar la interpretación de códigos de color ANSI/Termcap
export LESS='-R'

# Asegurar que man use less
export PAGER='less'

export MANPAGER='nvim +Man!'
