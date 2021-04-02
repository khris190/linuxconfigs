# Lines configured by zsh-newuser-install
	HISTFILE=~/.histfile
	HISTSIZE=1000
	SAVEHIST=1000
	bindkey -e
# End of lines configured by zsh-newuser-install


export PATH=$HOME/bin:$PATH


# Aliases
	alias ".rc"="nvim ~/.zshrc"
	
	alias cls="clear"
	
	alias pm="pacman"
	alias spm="sudo pacman"
	alias pu="sudo pacman -Syu"
	alias pi="pacman -Q"
	alias pgi="pacman -Q | grep"
	
	alias vi="nvim"
	alias vim="nvim"

	alias ls="ls --color"
	alias lsa="ls -A --color"
	alias ll="ls -l --color"
	alias lla="ls -lA --color"

	alias :q="exit"
	alias :l="clear"

#keybinds
bindkey "^[[1;5C" forward-word
bindkey "^[[1;5D" backward-word
bindkey "^[[H" beginning-of-line
bindkey "^[[F" end-of-line

#indexing locate and updatedb
export LOCATE_PATH="/mnt/linux_Storage/indexing/mlocate.db"



# autotitle
#this line just sets title when turned on

	PS1='%F{10}%M@%n %f%1~%F{10}]%#%f '

	print -Pn "\e]2;%~\a"
	chpwd() {
	  [[ -t 1 ]] || return
	  case $TERM in
	    sun-cmd) print -Pn "\e]l%~\e\\"
	      ;;
	    *xterm*|rxvt|(dt|k|E)term) print -Pn "\e]2;%~\a"
	      ;;
	  esac
	}

# load autosuggestions
	source /usr/share/zsh/plugins/zsh-autosuggestions/zsh-autosuggestions.zsh

# load syntax highlighting (needs to be last)
	source /usr/share/zsh/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh