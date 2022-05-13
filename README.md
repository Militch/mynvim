# MyNVim Configuration

## Installation

1. Install [packer.nvim](https://github.com/wbthomason/packer.nvim)

```bash
git clone --depth 1 https://github.com/wbthomason/packer.nvim \
~/.local/share/nvim/site/pack/packer/start/packer.nvim
```

2. Clone this repo to local

```bash
git clone --depth 1 https://github.com/Militch/mynvim.git \
~/.config/nvim
```

3. Start-up

```bash
nvim +PackerSync
```

## Uninstall

```bash
rm -rf ~/.config/nvim
rm -rf ~/.local/share/nvim
rm -rf ~/.cache/nvim
```
