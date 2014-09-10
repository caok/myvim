git clone https://github.com/caok/myvim.git ~/.vim
ln -s ~/.vim/vimrc ~/.vimrc

cd ~/.vim
mkdir -p ~/.vim/bundle
git clone git://github.com/Shougo/neobundle.vim ~/.vim/bundle/neobundle.vim
. ~/.vim/bundle/neobundle.vim/bin/neoinstall
