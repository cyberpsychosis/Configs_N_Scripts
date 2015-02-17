# this is a another test
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias ls='ls --color=auto'
PS1='[\u@\h \W]\$ '


#Bash
#alias makex='chmod +x'
alias b='vim ~/.bashrc'
alias bn='nano ~/.bashrc'
alias bu='source ~/.bashrc'
alias c='clear'
alias e='exit'
alias l='ls -a'
alias md='mkdir'
alias Fn='nano ~/.CLFu'
alias F='vim ~/.CLFu'
alias vimi="vim -c 'startinsert'"


#Backup/Sync Files
alias Backup='~/bin/Backup.sh'

#Locations
alias .='cd .. ; c ; l'
alias ..='cd ../.. ; c ; l'
alias ...='cd ../../.. ; c ; l'
alias ~='cd ~ ; c ; l'
alias cdhom='cd ~ ;c ; l'
alias cdprog='cd ~/Documents/Projects/Programming ; c ; l'
alias cdcprac='cd ~/Documents/Projects/Programming/C++/Practice ; c ;l'
alias cddown='cd ~/Downloads ; c ; l'
alias cdgrive='cd ~/Grive ; c ; l'
alias cdawe='cd ~/.config/awesome ; c ; l'


#Startup
alias start='won ; startx'
alias serv='python -m http.server' #this will run a simple http server over the lan in the current dir

#Shutdown
alias boff='Backup; sudo poweroff'
alias o='sudo poweroff'
alias re='sudo reboot'

#Pacman
alias aurlist='pacman -Qm'

#Virtualbox
alias vboxkern='sudo modprobe vboxdrv ; sudo modprobe vboxnetadp ; sudo modprobe vboxnetflt; sudo modprobe vboxpci'
alias vboxdoku='vboxkern ; startdoku'
alias startdoku='vboxheadless --startvm "Turnkey Doku"'
alias stopdoku='vboxmanage controlvm "Turnkey Doku" poweroff'
alias vboxrd='rdesktop -a 16 -N 127.0.0.1:3389'

#Launch program - Shortcuts
alias chr='chromium'

#Visuals
alias tron='xcompmgr &'
alias troff='killall xcompmgr'
alias split="xrandr --output VGA-0 --auto --output DVI-0 --auto --right-of VGA-0"
alias usplit="xrandr --output VGA-0 --auto --output DVI-0 --auto --same-as VGA-0"

#Network
alias won='sudo netctl start wlp0s22f2u4-Holister7'
alias woff='sudo netctl stop wlp0s22f2u4-Holister7'
alias serv='python -m http.server' #this will run a simple http server over the lan in the current dir
alias rdp='sudo teamviewer --daemon start ; teamviewer'
alias urdp='sudo teamviewer --daemon stop &'

#Nmap
alias ipo='iponly'

iponly() {
    nmap -sP "$1" | grep for | cut -c 22-
}


#Projects
alias mdtodo='vim ~/todo.md'
alias mdarchb='vim ~/ArchBuild.md'
alias mdpy='vim ~/Documents/Projects/Programming/Python/Python_Lessons_Learned.md'
alias mddeb='vim ~/Documents/Projects/Programming/debugging.md'
alias mdc='vim ~/Documents/Projects/Programming/C++/C++_ThingsToRemember.md'
alias mdnet='vim ~/Documents/Projects/Programming/C++/NetworkProgramming_C++/NetworkProgramming.md'
alias mdvim='vim ~/Documents/Projects/Programming/vim.md'



