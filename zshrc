ZSH_DISABLE_COMPFIX=true

# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH

# Path to your oh-my-zsh installation.
export ZSH="/Users/michaelrivera/.oh-my-zsh"

# Set name of the theme to load --- if set to "random", it will
# load a random theme each time oh-my-zsh is loaded, in which case,
# to know which specific one was loaded, run: echo $RANDOM_THEME
# See https://github.com/robbyrussell/oh-my-zsh/wiki/Themes
# ZSH_THEME="robbyrussell"
# ZSH_THEME="spaceship"
ZSH_THEME="alanpeabody"
# ZSH_THEME="powerlevel9k/powerlevel9k"
# POWERLEVEL9K_MODE="nerdfont-complete"

# SPACESHIP_PROMPT_ADD_NEWLINE=false
# SPACESHIP_PROMPT_SEPARATE_LINE=true
# SPACESHIP_USER_SHOW="true"
# POWERLEVEL9K_DISABLE_RPROMPT=true
# POWERLEVEL9K_PROMPT_ON_NEWLINE=true
# POWERLEVEL9K_TIME_FOREGROUND='red'
# POWERLEVEL9K_TIME_BACKGROUND='blue'
# POWERLEVEL9K_VCS_FOREGROUND='239'
# VCS_GIT_GITHUB_ICON

# Set list of themes to pick from when loading at random
# Setting this variable when ZSH_THEME=random will cause zsh to load
# a theme from this variable instead of looking in ~/.oh-my-zsh/themes/
# If set to an empty array, this variable will have no effect.
# ZSH_THEME_RANDOM_CANDIDATES=( "robbyrussell" "agnoster" )

# Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="true"

# Uncomment the following line to use hyphen-insensitive completion.
# Case-sensitive completion must be off. _ and - will be interchangeable.
# HYPHEN_INSENSITIVE="true"

# Uncomment the following line to disable bi-weekly auto-update checks.
# DISABLE_AUTO_UPDATE="true"

# Uncomment the following line to change how often to auto-update (in days).
# export UPDATE_ZSH_DAYS=13

# Uncomment the following line to disable colors in ls.
# DISABLE_LS_COLORS="true"

# Uncomment the following line to disable auto-setting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment the following line to enable command auto-correction.
# ENABLE_CORRECTION="true"

# Uncomment the following line to display red dots whilst waiting for completion.
COMPLETION_WAITING_DOTS="true"


# Uncomment the following line if you want to disable marking untracked files
# under VCS as dirty. This makes repository status check for large repositories
# much, much faster.
# DISABLE_UNTRACKED_FILES_DIRTY="true"

# Uncomment the following line if you want to change the command execution time
# stamp shown in the history command output.
# You can set one of the optional three formats:
# "mm/dd/yyyy"|"dd.mm.yyyy"|"yyyy-mm-dd"
# or set a custom format using the strftime function format specifications,
# see 'man strftime' for details.
# HIST_STAMPS="mm/dd/yyyy"

# Would you like to use another custom folder than $ZSH/custom?
# ZSH_CUSTOM=/path/to/new-custom-folder

# Which plugins would you like to load?
# Standard plugins can be found in ~/.oh-my-zsh/plugins/*
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(
git
)

source $ZSH/oh-my-zsh.sh

# User configuration

# export MANPATH="/usr/local/man:$MANPATH"

# You may need to manually set your language environment
# export LANG=en_US.UTF-8

# Preferred editor for local and remote sessions
# if [[ -n $SSH_CONNECTION ]]; then
#   export EDITOR='vim'
# else
#   export EDITOR='mvim'
# fi

# Compilation flags
# export ARCHFLAGS="-arch x86_64"

# ssh
# export SSH_KEY_PATH="~/.ssh/rsa_id"

# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.
#
# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"
#
#FileChecker
alias 42FileChecker="bash ~/42FileChecker/42FileChecker.sh"

#Git Commands
alias gg="git add .; git commit -m "."; git push origin master"
alias mirror="bash ~/Dual_git_push_v02.sh"
# alias mirror="git add .; read -p "Commit description: " desc; git commit -m "$desc"; git push origin mirror; echo 'Fuck yeah...'"

#Project Navigation
alias libft="cd ~/projects/libft2-0; ls"
alias gnl="cd ~/projects/get_next_line/get_next_line3; ls"
alias hercules="cd ~/projects/hercules; ls"
alias fillit="cd ~/projects/fillit; ls"
alias ftprintf="cd ~/projects/ft_printf_project/ft_printf2; ls"
alias b_printf="cd ~/projects/b_printf; ls"
alias ssl="cd ~/projects/ssl; ls"
alias init="cd ~/42_projects/init; ls"

#Navigation
alias desktop="cd ~/Desktop; clear; ls"
alias dotfiles="bash ~/dotfiles/update.sh"

#Open PDFs
alias norm="open ~/projects/project_docs_PDFs/norme.en.pdf"
alias gnlpdf="open ~/projects/project_docs_PDFs/get_next_line.en.pdf"
alias libftpdf="open ~/projects/project_docs_PDFs/libft.en.pdf"
alias printfpdf="open ~/projects/project_docs_PDFs/ft_printf.en.pdf"
alias fillitpdf="open ~/projects/project_docs_PDFs/fillit.en.pdf"
alias md5pdf="open ~/projects/project_docs_PDFs/ft_ssl_md5.en.pdf"
alias initpdf="open ~/projects/init/init.en.pdf"

#Misc
alias na="vim ~/dotfiles/zshrc"
alias vr="vim ~/dotfiles/vimrc"
alias gcc="gcc -Wall -Wextra -Werror -g"
alias src="cd; source .zshrc"

mkdir -p /tmp/.$(whoami)-brew-locks
export PATH="$HOME/.brew/bin:$PATH"
export PATH="$HOME/.gem/ruby/2.5.0/bin:$PATH"
export PATH="/usr/local/sbin:$PATH"
