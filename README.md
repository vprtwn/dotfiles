## Updating:
* `./update`

## Installing:
* zsh (oh-my-zsh)
    * curl -L https://github.com/robbyrussell/oh-my-zsh/raw/master/tools/install.sh | sh
* `./install`
* Patch powerline fonts
  * `git clone https://github.com/Lokaltog/powerline.git`
  * `git clone https://github.com/Lokaltog/powerline-fonts.git`
  * https://powerline.readthedocs.org/en/latest/fontpatching.html
* compile YouCompleteMe
    * `cd ~/.vim/bundle/YouCompleteMe`
    * For .NET completions, download Mono
        * http://monodevelop.com/Download
    * `./install.sh --clang-completer --omni-sharp-completer`
* ctags
    * `brew install ctags`
* ag
    * `brew install the_silver_searcher`
* rupa/z
    * `cd /usr/bin`
    * `sudo curl -O https://raw.github.com/rupa/z/master/z.sh`
    * `sudo chmod 775 z.sh`
    * `. /usr/bin/z.sh`
