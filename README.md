# OverVim

Neovim config for Overflow workshop

## System prerequisites

| Dependency | Why it's needed |
|---|---|
| **Neovim ≥ 0.11** | Uses the new LSP APIs (`vim.lsp.config`, `vim.lsp.protocol.Methods`, `client:supports_method`). |
| **git** | Bootstraps `lazy.nvim` and clones plugins. |
| **C compiler (`gcc`/`cc`) + `make`** | Compiles `telescope-fzf-native.nvim` and Tree-sitter parsers. |
| **Node.js / npm** | Used by LSP servers and tools such as `biome`. |
| **Tree-sitter CLI** | Required by the `nvim-treesitter` main branch to build parsers. |
| **ripgrep** | Required for find grep in `telescope` |
| **fd** | Required for find files in `telescope` |

## Optional Dependency
| **Rust toolchain (`cargo`)** | Provides blink.cmp's Rust fuzzy matcher (`prefer_rust_with_warning`). |

## Installation (Windows)

Using Scoop package manager [Scoop](https://scoop.sh/#/)
Install scoop using Powershell in Terminal
```powershell
Set-ExecutionPolicy -ExecutionPolicy RemoteSigned -Scope CurrentUser
Invoke-RestMethod -Uri https://get.scoop.sh | Invoke-Expression
```
Restart Terminal after installing Scoop

### Neovim ≥ 0.11

```powershell
scoop install main/neovim
```

### git
You should already have git installed
If not, install it from [Git website](https://git-scm.com/install/windows)

### ripgrep and fd

```powershell
scoop install main/ripgrep
scoop install main/fd
```

### Node.js / npm

You should have this installed already for your module
```
https://docs.npmjs.com/cli/v12/configuring-npm/install
```

// TODO: THIS IS NOT CONFIRMED
// WINDOWS HAS "Visual Studio Installer which should have gcc"
### C compiler (`gcc`/`cc`) + `make` 

```powershell
scoop install main/gcc
scoop install main/make
```

### Tree-sitter CLI

Install via Node (cross-platform, version-pinned):

```powershell
npm install -g tree-sitter-cli
```

### Optional: Rust toolchain (cargo)

```
https://rust-lang.org/learn/get-started/
```

Then in a new shell:

```powershell
rustup toolchain install stable
```


### Verify

```powershell
nvim --version
git --version
rg --version
fd --version
node --version
gcc --version
make --version
tree-sitter --version
```

### Optional Verify
```
cargo --version
```

Make sure all the required packages shows a version (proof it has been installed)
Run 
```powershell
git clone https://github.com/junmingrs/OverVim $env:LOCALAPPDATA\nvim
```
and you're all set!
