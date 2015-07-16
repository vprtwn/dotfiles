# Path to your oh-my-zsh configuration.
ZSH=$HOME/.oh-my-zsh
. ~/.rbenvrc

# Set name of the theme to load.
# Look in ~/.oh-my-zsh/themes/
# Optionally, if you set this to "random", it'll load a random theme each
# time that oh-my-zsh is loaded.
ZSH_THEME="dpoggi"

# aliases
alias xc="open *.xcworkspace || open *.xcodeproj"
alias gdf="git diff"
alias idk="printf \"¯\_(ツ)_/¯\" | pbcopy && echo \"¯\_(ツ)_/¯ copied to clipboard\""
alias shrug="idk"
alias lod="printf \"ಠ_ಠ\" | pbcopy && echo \"ಠ_ಠ copied to clipboard\""
alias disapprove="lod"

## fasd aliases
alias a='fasd -a'        # any
alias s='fasd -si'       # show / search / select
alias d='fasd -d'        # directory
alias f='fasd -f'        # file
alias sd='fasd -sid'     # interactive directory selection
alias sf='fasd -sif'     # interactive file selection
alias z='fasd_cd -d'     # cd, same functionality as j in autojump
alias zz='fasd_cd -d -i' # cd with interactive selection
alias rmdd='rm -rf ~/Library/Developer/Xcode/DerivedData/*'
alias rmmc='rm -rf "$(getconf DARWIN_USER_CACHE_DIR)/org.llvm.clang/ModuleCache"'

# Set to this to use case-sensitive completion
# CASE_SENSITIVE="true"

# Comment this out to disable bi-weekly auto-update checks
# DISABLE_AUTO_UPDATE="true"

# Uncomment to change how often before auto-updates occur? (in days)
# export UPDATE_ZSH_DAYS=13

# Uncomment following line if you want to disable colors in ls
# DISABLE_LS_COLORS="true"

# Uncomment following line if you want to disable autosetting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment following line if you want to disable command autocorrection
DISABLE_CORRECTION="true"

# Uncomment following line if you want red dots to be displayed while waiting for completion
COMPLETION_WAITING_DOTS="true"

# Uncomment following line if you want to disable marking untracked files under
# VCS as dirty. This makes repository status check for large repositories much,
# much faster.
# DISABLE_UNTRACKED_FILES_DIRTY="true"

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
plugins=(git golang osx pod python heroku z)

source $ZSH/oh-my-zsh.sh

# Customize to your needs...
export PATH=/usr/local/bin:$PATH:/Users/benguo/.rvm/gems/ruby-1.9.3-p392/bin:/Users/benguo/.rvm/gems/ruby-1.9.3-p392@global/bin:/Users/benguo/.rvm/rubies/ruby-1.9.3-p392/bin:/Users/benguo/.rvm/bin:/usr/bin:/bin:/usr/sbin:/sbin


### Added by the Heroku Toolbelt
export PATH="/usr/local/heroku/bin:$PATH"
