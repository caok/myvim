git clone https://github.com/caok/myvim.git ~/vimfiles
ln -s ~/vimfiles ~/.vim
echo "source ~/.vim/vimrc" > ~/.vimrc

cd ~/.vim
mkdir -p ~/.vim/bundle
git clone git://github.com/Shougo/neobundle.vim ~/.vim/bundle/neobundle.vim
. ~/.vim/bundle/neobundle.vim/bin/neoinstall
