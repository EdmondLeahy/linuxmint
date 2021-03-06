#-------------- Edmond Added Aliases
alias cls=clear
alias clc=clear
alias cd..="cd .."
alias e.="xdg-open $PWD"
alias pip=pip3
alias calias="sudo nano ~/.bash_aliases"
alias where=func_where
alias md=mkdir
alias vc=virtual_create
alias ve=virtual_enter
alias vl=virtual_list
alias pubip="dig +short myip.opendns.com @resolver1.opendns.com"
alias jpn="jupyter-notebook"
alias jupyterize=virtual_jupyterize
alias vlist="ls ~edmond/Documents/venv/"
alias wifichan="nmcli dev wifi"
# Update this bash alias in the github directory
alias upalias="cp /home/edmond/.bash_aliases /home/edmond/Downloads/linuxmint/.bash_aliases"
alias downalias="sudo cp /home/edmond/Downloads/linuxmint/.bash_aliases /home/edmond/.bash_aliases"
# system update alias
alias update="sudo apt update"
alias upgrade="sudo apt upgrade"
alias gimme="sudo apt install -y"

# FUNCTIONS
# where command
func_where(){
	whereis "$1"
}

# create virtualenv
virtual_create(){
	python3.7 -m venv /home/edmond/Documents/venv/"$1"
}

virtual_enter(){
	source /home/edmond/Documents/venv/"$1"/bin/activate
}

virtual_list(){
        ls /home/edmond/Documents/venv
}

virtual_jupyterize(){
	python -m ipykernel install --user --name="$1"
}
