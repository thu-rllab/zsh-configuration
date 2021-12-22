#!/bin/bash

ZSH_PLUGIN=$ZSH/custom/plugins
cd $ZSH_PLUGIN

# zsh-syntax-highlighting
git clone git@github.com:zsh-users/zsh-syntax-highlighting.git
echo -e "\n# >>> zsh-syntax-highlighting >>>\nsource $ZSH_PLUGIN/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh\n# <<< zsh-syntax-highlighting <<<" >> $HOME/.zshrc

# zsh-autosuggestions
git clone git://github.com/zsh-users/zsh-autosuggestions
sed -i 's/plugins=(git)/plugins=(\n\tzsh-autosuggestions\n\textract\n)/g' $HOME/.zshrc

# autojump
git clone git://github.com/wting/autojump.git
cd autojump
./install.py
echo -e "\n# >>> autojump >>>\n[[ -s $HOME/.autojump/etc/profile.d/autojump.sh ]] && source $HOME/.autojump/etc/profile.d/autojump.sh\nautoload -U compinit && compinit -u\n# <<< autojump <<<" >> $HOME/.zshrc

# change the zsh theme
# sed -i 's/ZSH_THEME="robbyrussell"/ZSH_THEME="ys"/g' $HOME/.zshrc
