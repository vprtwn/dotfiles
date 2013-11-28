### xcode color scheme
* `cp Resesif.dvtcolortheme ~/Library/Developer/Xcode/UserData/FontAndColorThemes/Resesif.dvtcolortheme`

### ^w
* `cp DefaultKeyBinding.dict ~/Library/KeyBindings/DefaultKeyBinding.dict`

### vim
* patch powerline fonts
  * `git clone https://github.com/Lokaltog/powerline.git`
  * `git clone https://github.com/Lokaltog/powerline-fonts.git`
  * https://powerline.readthedocs.org/en/latest/fontpatching.html
* `cp .vimrc ~/.vimrc`
* `vim +BundleInstall +qall`
* compile YouCompleteMe
    * `cd ~/.vim/bundle/YouCompleteMe`
    * `./install.sh --clang-completer --omni-sharp-completer`

### Ag
* `brew install the_silver_searcher`

### zsh
`cp .zshrc ~/.zshrc`

### rupa/z

```
cd /usr/bin
sudo curl -O https://raw.github.com/rupa/z/master/z.sh
sudo chmod 775 z.sh
. /usr/bin/z.sh
```
