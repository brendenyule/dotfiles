# Alias
# Working directory Aliases
alias work='cd ~/Work/SentryLink'
alias sl='cd ~/Work/SentryLink'
alias sv='cd ~/Work/SentryView'
#alias fab='cd "/run/media/doctorly/2cac840c-acc1-4ae4-9abd-8175eb7200cc/work/refable2.0"'

if [ -f ~/.bash_work_aliases ]; then
  . ~/.bash_work_aliases
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

alias elk="ssh -L 8082:52.0.1.36:80 my-sb -N"

#alias elk-dev="ssh -L 8082:35.161.229.111:80 my-sb -N"

alias eb-debug="ruby ~/scripts/aws_debug.rb"


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
add_key_to_server() {
  cat ~/.ssh/id_rsa.pub | ssh $1 'cat >> .ssh/authorized_keys'
}

#clear then ls after cd
function cd() {
    new_directory="$*";
    if [ $# -eq 0 ]; then
        new_directory=${HOME};
    fi;
    builtin cd "${new_directory}" && clear && ls -a
}

#function script() {
    #save_directory="$*";
    #if [ $# -eq 0 ]; then
        #if [ -d ${HOME}/archive/scripts/ ]; then
            #save_directory='${HOME}/archive/scripts/$(date +%F-%T)';
        #else
            #save_directory='${HOME}/session-record-$(date +%F-%T)';
        #fi;
    #fi;
    #"script $(save_directory)"
#}

grepl() {
  grep $1 | less
}

al() {
  ack-grep $1 | less
}

archive_todo() {
  mv ~/TODO.txt ~/archive/archived_notes/TODO_$(date +%F-%T)
}

