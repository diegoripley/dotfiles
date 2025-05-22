## Installation
1. Install [GNU Stow](https://www.gnu.org/software/stow/)
2. Install Python client for Neovim. In ArchLinux this is done as such `pacman -S python-pynvim`
3. Install the minimalist Vim plugin manager ([vim-plug](https://github.com/junegunn/vim-plug))
```
curl -fLo ~/.local/share/nvim/site/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
```
4. Clone this repo to your home directory
5. Symlink all of the configuration files by typing `stow foldername`. For example, for the git folder type `stow git`
6. Install the Vim plugins by typing `:PlugInstall` when you launch Neovim 
