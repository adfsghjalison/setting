sudo apt-get install vim
sudo apt-get install python3
sudo apt-get install python3-pip

alias python=python3
alias py=python3
alias pip=pip3

# vim 
if [ ! -a ~/.vimrc ]; then
    cp vimrc ~/.vimrc
fi

# tab completion case-insensitive 
if [ ! -a ~/.inputrc ]; then
    echo '$include /etc/inputrc' > ~/.inputrc;
    echo 'set completion-ignore-case On' >> ~/.inputrc
    . ~/.inputrc
fi

# tmux 
sudo apt-get install tmux
git clone https://github.com/adfsghjalison/.tmux.git
cp .tmux/.tmux.conf ~/.tmux.conf
cp .tmux/.tmux.conf.local ~/.tmux.conf.local
rm -r .tmux


