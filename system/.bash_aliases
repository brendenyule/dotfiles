# Alias
# Working directory Aliases
alias work='cd ~/Work/SentryLink'
alias sl='cd ~/Work/SentryLink'
alias sv='cd ~/Work/SentryView'
#alias fab='cd "/run/media/doctorly/2cac840c-acc1-4ae4-9abd-8175eb7200cc/work/refable2.0"'

if [ -f ~/work_aliases ]; then
  . ~/work_aliases
fi

# Flush term output
alias cls='printf "\033c"'

# Tmux color problem
alias tmux='tmux -2'

#alias news='newsbeuter'

#alias feed='tmux new-session -s feed "tmuxifier w feed"'

#backup system using rsync
#alias backup='sudo rsync -aAXvP --exclude={"/dev/*","/proc/*","/sys/*","/tmp/*","/run/*","/mnt/*","/media/*","/lost+found"} /* /run/media/doctorly/2cac840c-acc1-4ae4-9abd-8175eb7200cc/backup'

alias f='sudo find -iname'

alias h="history"

alias gh="history | grep"

if command -v ag >/dev/null 2>&1; then
  alias agl='ag --pager "less -R"'
elif command -v ack-grep >/dev/null 2&1; then
  alias agl=al
else
  agl=grepl
fi

#alias cop=". ~/bin/cop"

if command -v nvim >/dev/null 2>&1; then
  alias vim='nvim'
elif ! command -v vim >/dev/null 2>&1; then
  alias vim='vi'
fi

#Functions
grepl() {
  grep $1 | less
}

al() {
  ack-grep $1 | less
}

