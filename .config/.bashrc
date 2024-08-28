#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

# Primary prompt
#PS1='[\u@\h \W]\$ '
#export PS1="\[\033[38;5;85m\]\u\[$(tput sgr0)\]@\[$(tput sgr0)\]\[\033[38;5;215m\]\h\[$(tput sgr0)\]>[\w]:\\$ \[$(tput sgr0)\]"
#[[ -r "/usr/share/bash-completion/bash_completion" ]] && . "/usr/share/bash-completion/bash_completion"

# Load starship
#eval "$(starship init bash)"
# Load starship prompt if starship is installed
if  [ -x /usr/bin/starship ]; then
    __main() {
        local major="${BASH_VERSINFO[0]}"
        local minor="${BASH_VERSINFO[1]}"

        if ((major > 4)) || { ((major == 4)) && ((minor >= 1)); }; then
            source <("/usr/bin/starship" init bash --print-full-init)
        else
            source /dev/stdin <<<"$("/usr/bin/starship" init bash --print-full-init)"
        fi
    }
    __main
    unset -f __main
fi


# Backup, Careful check destination path!!!
origen="/0/"
destino="/run/media/d7/d7-backup/"
RSYNC_OPTIONS="-aAXv --delete --exclude='.Trash-1000/' --exclude='*/node_modules'"

# rsync -aAXv --delete --exclude='*/node_modules' /0/ /run/media/d7/d7-backup/
alias backup="rsync $RSYNC_OPTIONS $origen $destino && echo -e '\nExternal SSD backup done!'"
alias test-backup="rsync $RSYNC_OPTIONS --dry-run $origen $destino && echo -e '\nExternal SSD backup test done!'"
alias test-backup-output="rsync $RSYNC_OPTIONS --dry-run $origen $destino > rsync_out.txt 2>&1"

alias backup-MEGA="rsync -aAXvh --delete /0/Documents/D7-notes /0/Documents/David7ce-docs/bookmarks /0/Documents/David7ce-docs/software-list /0/Software/Config-files /home/d7/MEGA/MEGA/Documents/"

############ Bash aliases #############

alias list-pkgs='pacman -Qq > arch-pkgs.txt && pacman -Qqm > aur-pkgs.txt && flatpak list --app --columns=application > flatpak-pkgs.txt'
alias c='clear'
alias breload='cd ~ && source ~/.bashrc'
alias dir='dir --color=auto'
alias egrep='grep -E --color=auto'
alias ff='fastfetch'
alias fgrep='grep -F --color=auto'
alias hw='hwinfo --short'
alias jctl='journalctl -p 3 -xb'
alias grep='grep --color=auto'
alias grubup="sudo update-grub"
alias hg='history'
alias i='ip -br -c a'
alias ls='exa -al --color=always --group-directories-first --icons' # preferred listing
alias la='exa -a --color=always --group-directories-first --icons'  # all files and dirs
alias ll='exa -l --color=always --group-directories-first --icons'  # long format
alias lt='exa -aT --color=always --group-directories-first --icons' # tree listing
alias l='exa -lah --color=always --group-directories-first --icons' # tree listing
alias mkfile='touch'
alias psmem10='ps auxf | sort -nr -k 4 | head -10'
alias psmem='ps auxf | sort -nr -k 4'
alias rip="expac --timefmt='%Y-%m-%d %T' '%l\t%n %v' | sort | tail -200 | nl"
alias tarnow='tar -acf '
alias untar='tar -zxvf '
alias upd='/usr/bin/update'
alias vdir='vdir --color=auto'
alias wget='wget -c '

# Test github
alias pingme='ping -c64 github.com'
alias traceme='traceroute github.com'

# Git commands
alias push='git add . && git commit -m "update" && git push'

# iso and version used to install ArcoLinux
alias iso="cat /etc/dev-rel | awk -F '=' '/ISO/ {print $2}'"

# Replace stuff with bat
alias cat='bat '
alias rg='batgrep '
alias man='tldr '

# Pacman for software managment
alias pacman='sudo pacman'
#alias fixpacman="sudo rm /var/lib/pacman/db.lck"
alias search='sudo pacman -Qs'
alias rmpkg="sudo pacman -Rdd"
alias remove='sudo pacman -Rcns'
alias orphans='sudo pacman -Rns $(pacman -Qtdq)'
alias cleanup='sudo pacman -Rns `pacman -Qtdq`'
alias install='sudo pacman -S'
alias clrcache='sudo pacman -Scc'
alias akring='sudo pacman -Sy archlinux-keyring --noconfirm'
alias update='sudo pacman -Syu && yay -Syu && flatpak update'
alias linstall='sudo pacman -U '

# Package Info
alias info='sudo pacman -Si '
alias infox='sudo pacman -Sii '

# Refresh Keys
alias rkeys='sudo pacman-key --refresh-keys'

# shutdown or reboot
alias reboot='sudo reboot'
alias shut='shutdown now'

# Systemctl
alias sc='systemctl'
alias scs='systemctl list-units --type=service'
alias scas='systemctl list-units --type=service --state=running'
alias sce='systemctl list-unit-files --type=service | grep enabled'
alias scstart='sudo systemctl start'
alias scstop='sudo systemctl stop'
alias screstart='sudo systemctl restart'
alias scenable='sudo systemctl enable'
alias scdisable='sudo systemctl disable'
alias scstatus='systemctl status'
alias screload='sudo systemctl daemon-reload'
alias scjournal='journalctl -u'
alias scjournalf='journalctl -fu'
alias scsysjournal='journalctl'
alias scsysjournalf='journalctl -f'
alias scsysjournal50='journalctl -n 50'
alias scsysjournal50f='journalctl -n 50 -f'
alias xampp_start='sudo /opt/lampp/xampp start'
alias xampp_stop='sudo /opt/lampp/xampp stop'

# Online server and mirrorliss
alias reflector='sudo reflector --latest 50 --country Portugal,Spain,France,Italy,Germany,Sweden,"United Kingdom","United States" --protocol http,https --sort rate --save /etc/pacman.d/mirrorlist'

# Interesting commands
# list all commands and sort by alphabetical order with '_' chars at the beginning
alias lsc='compgen -c | sort -k1.1,1.1 -k1.2n,1.2 > list-commands.txt'

# ex = Extractor for all kinds of archives
# usage: ex <file>
#ex ()
#{
#  if [ -f $1 ] ; then
#    case $1 in
#      *.tar.bz2)   tar xjf $1   ;;
#      *.tar.gz)    tar xzf $1   ;;
#      *.bz2)       bunzip2 $1   ;;
#      *.rar)       unrar x $1   ;;
#      *.gz)        gunzip $1    ;;
#      *.tar)       tar xf $1    ;;
#      *.tbz2)      tar xjf $1   ;;
#      *.tgz)       tar xzf $1   ;;
#      *.zip)       unzip $1     ;;
#      *.Z)         uncompress $1;;
#      *.7z)        7z x $1      ;;
#      *.deb)       ar x $1      ;;
#      *.tar.xz)    tar xf $1    ;;
#      *.tar.zst)   unzstd $1    ;;
#      *)           echo ''$1' cannot be extracted via ex()' ;;
#    esac
#  else
#    echo ''$1' is not a valid file'
#  fi
#}

# Automatic tmux session
#if [[ $- =~ i ]] && [[ -z "$TMUX" ]] && [[ -n "$SSH_TTY" ]]; then
#  tmux attach-session -t ssh_tmux || tmux new-session -s ssh_tmux
#fi

# Node.jsVersion Manager
#export NVM_DIR="$HOME/.nvm"
#[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
#[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

# Created by `pipx` on 2024-06-29 00:20:01
#export PATH="$PATH:/home/d7/.local/bin"
#export LD_LIBRARY_PATH=$PWD/lib/Linux-x86_64/piper_phonemize/lib

PATH=~/.console-ninja/.bin:$PATH
