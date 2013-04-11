# Roy van der Meijs Dot Files

These are the config files to set up a system just the way I like it.
It uses [Oh My ZSH]('https://github.com/robbyrussel/oh-my-zsh).

I am running on Mac OS X, but it will likely work on linux as well.

## Installation

Run the following commands in your terminal. It will prompt you before it does anything destructive. Check out the [Rakefile](https://github.com/roy/dotfiles/blob/master/Rakefile) to see exactly what it does.

```terminal
git clone git://github.com/roy/dotfiles ~/.dotfiles
cd ~/.dotfiles
rake install
vim -u ~/.vimrc +BundleInstall +qall  
```

After installing, open a new terminal window to see the effects.


## Features

Currently the oh-my-zsh plugin only includes a couple of aliases and a clean prompt theme.
The most work has gone into customizing vim.

## Uninstall

To remove the dofile configs, run the following commands. Be certain to double ckeck the contents of the files before removing so you don't lose custom settings.

```
unlink ~/.gitignore
unlink ~/.gemrc
unlink ~/.gvimrc

unlink ~/.ackrc
unlink ~/.bin
unlink ~/.gemrc
unlink ~/.gitignore
unlink ~/.gvimrc
unlink ~/.railsrc
unlink ~/.vim
unlink ~/.vimrc
unlink ~/.zshrc
rm ~/.gitconfig
rm -rf ~/.oh-my-zsh
```

Then open a new terminal window to see the effects

## Credits

Rakefile and how to setup oh-my-zsh is copied from [Ryan Bates](https://github.com/ryanb/dotfiles)
