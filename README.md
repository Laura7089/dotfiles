# Laura7089's Dotfiles

My most relevant dotfiles organised for use with GNU stow.

To use, clone the repo, then run `stow <tool name>` for each tool whose dotfiles you want to use.
You might need to move/backup your existing dotfiles for some tools.

Thanks to:
- [u/felixsanz](https://www.reddit.com/r/unixporn/comments/69008j/i3gaps_1984/) for base polybar and rofi

## Ansible Deployment

In the `DEPLOY` folder you will find a set of ansible playbooks to deploy my development environment on a workstation of your choosing.
They will install and configure:

- neovim
- zsh
- rust
- a number of utilities I use often
- dependencies for the above

These playbooks do require root permissions to install packages and change shell, so I suggest reading them first and using with caution.

## Notes

### Vim

I use [neovim](https://github.com/neovim/neovim) with [vim-plug](https://github.com/junegunn/vim-plug).

Powerline-compatible fonts must be installed in your terminal emulator for [`vim-airline`](https://github.com/vim-airline/vim-airline) to work.
See [the section in their README](https://github.com/vim-airline/vim-airline#integrating-with-powerline-fonts) (I suggest [nerd fonts](https://www.nerdfonts.com/)).

### Zsh

I use [oh-my-zsh](https://github.com/robbyrussell/oh-my-zsh) as a plugin and theme manager.

### Polybar

Requires a nerdfont or some other font-awesome enabled font to function.
