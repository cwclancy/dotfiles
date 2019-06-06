export WORKON_HOME=$HOME/.virtualenvs
export PROJECT_HOME=$HOME/Devel
source /Library/Frameworks/Python.framework/Versions/3.5/bin/virtualenvwrapper.sh

# General 
alias recon="source ~/.bashrc"
alias add="vim ~/.bashrc"

alias reconp="source ~/.bash_profile"
alias profile="vim ~/.bash_profile"

alias vimrc="vim ~/.vimrc"

alias stop="deactivate"

subl(){
  /Applications/Sublime\ Text.app/Contents/SharedSupport/bin/subl ./$1
}

#213

alias shark="ssh -X cclancy@shark.ics.cs.cmu.edu"

# MaTeX

alias test="python simple_doc.py"
alias matex="cd ~/Desktop/MaTeX"
alias basic="cd ~/Desktop/MaTeX/editor/basic"
alias editor="cd ~/Desktop/MaTeX/editor"
alias cleanfinal="rm final.log final.aux final.pdf"
alias manage="python manage.py"

#   Django
alias createdoc="cd ~/Desktop/MaTeX/matex/createdoc ; source ../../env/bin/activate"
alias runserver="cd ~/Desktop/MaTeX/editor; python3 manage.py runserver"
