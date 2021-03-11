# dotfiles
cd ~/
mkdir dotfiles  
mv ./.zshrc dotfiles/.zshrc  
mv ./.vim dotfiles/.vim  
mv ./.vimrc dotfiles/.vimrc  
mv ./.bash_profile dotfiles/.bash_profile  
mv ./.bashrc dotfiles/.bashrc  

ln -sf ~/dotfiles/.zshrc ~/.zshrc  
ln -sf ~/dotfiles/.vim ~/.vim  
ln -sf ~/dotfiles/.vimrc ~/.vimrc  
ln -sf ~/dotfiles/.bash_profile ~/.bash_profile  
ln -sf ~/dotfiles/.bashrc ~/.bashrc  