setopt nonomatch

eval "$(rbenv init -)"
alias dc='docker-compose'
alias darspec='docker-compose run --rm api bundle exec rspec'
alias darubo='docker-compose run --rm api bundle exec rubocop'
alias rwc='ruby -wc'
alias gstno='git diff --name-only'
alias vzr='vi ~/.zshrc'
alias szr='source ~/.zshrc'
alias desk='/Users/zhixianpiao/Desktop'
alias gmd='git merge --no-ff origin/develop'
alias dea='docker-compose exec api rails console'

# Go関連
export GOPATH=$HOME/go
export PATH=$GOPATH/bin:$PATH
typeset -U path PATH

bindkey '^]' peco-src
function peco-src() {
  local src=$(ghq list --full-path | peco --query "$LBUFFER")
  if [ -n "$src" ]; then
    BUFFER="cd $src"
    zle accept-line
  fi
zle -R -c
}
zle -N peco-src
