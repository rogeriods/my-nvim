# My NVIM 

This is my personal Neovim configuration. I’ve tried to keep it clean and use as few plugins as possible.

### Dependencies to install

Minimal to run Neovim without plugins:

```bash
sudo dnf install -y gcc make git ripgrep fd-find unzip
```

For conform:

```bash
cargo install stylua
```

For treesitter:

```bash
cargo install tree-sitter-cli
```

In some distros it is necesssary install clang and clang-devel ex. 'Almalinux 10' or 
sudo apt install -y clang libclang-dev for 'Ubuntu'
