These dotfiles use chezmoi

Here is a setup if you want to make your own dotfiles:
https://www.chezmoi.io/quick-start/#concepts

However to copy these you need to install chezmoi with you package manager:
Ex. Arch - sudo pacman -S chezmoi

Once installed to copy my dots use - "chezmoi init --apply DarthMooMancer", excluding the quotes. This will install the dots and that is it. 
In order to update the dots later on you can run:

"chezmoi update"


For neovim, I have downloaded the language servers manually instead of something like mason, so if you want automatic lsp setup you will have to setup mason yourself or manually install the servers yourself 

LSP and NEOVIM
--------------

Lsp servers in config
1. pyright = python lsp
2. rust_analyzer = rust lsp
3. jdtls = java lsp
4. lua_ls = Lua lsp 

I also use custom snippets along with the ones included with lsp. Instead of using an engine, i just use the builtin one from neovim.

I also moved back to i3 so the last hyprland push is commit c0d3029 on November 1, 2024. Support for hyprland wont be updated only i3.

PACKAGES NEEDED
---------------
EASY INSTALL
    $ yay -S acpi autotiling fd brightnessctl i3-wm i3blocks jdtls kitty neovim rofi zsh-pure-prompt

acpi - i3blocks battery
autotiling - i3 tiling - dwindle effect
brightnessctl - changing brightness without sudo permissions as xbacklight only seems to work with root permissions
fd - used with fzf
i3-wm
i3blocks
i3lock
jdtls 
kitty
neovim
rofi
zsh-pure-prompt

