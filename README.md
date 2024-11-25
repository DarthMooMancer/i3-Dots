These dotfiles use chezmoi

Here is a setup if you want to make your own dotfiles:
https://www.chezmoi.io/quick-start/#concepts

However to copy these you need to install chezmoi with you package manager:
Ex. Arch - sudo pacman -S chezmoi

Once installed to copy my dots use - "chezmoi init --apply DarthMooMancer", excluding the quotes. This will install the dots and that is it. 
In order to update the dots later on you can run:

"chezmoi update"


I use custom snippets along with the ones included with lsp. Instead of using an engine, i just use the builtin one from neovim. However I do have an old dotfiles repo with snippets engine and mason. Here is the repo and the commit - https://github.com/DarthMooMancer/dotfiles-old/tree/b0e5eb402e01570056569994ebbc18b0b6143a7a

I also moved back to i3 so the last hyprland push is commit c0d3029 on November 1, 2024. Support for hyprland wont be updated only i3. 

PACKAGES NEEDED and Setup
-------------------------
EASY INSTALL
```
yay -S acpi autotiling fd brightnessctl i3-wm i3blocks jdtls kitty neovim rofi zsh-pure-prompt picom-ftlabs-git
```
You will also need to download the old jetbrainsmono nerd fonts before update 3 as update 3 breaks icons. Here is the link https://github.com/ryanoasis/nerd-fonts/releases/tag/v2.3.3
