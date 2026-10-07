# nvim-overvim

Personal Neovim configuration.

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

The easiest route is [winget](https://learn.microsoft.com/windows/package-manager/winget/)
(built into Windows 11 and recent Windows 10). Run these in a PowerShell or
Windows Terminal with admin rights where noted. `scoop`/`choco` equivalents are
listed as alternatives.

### Neovim ≥ 0.11

```powershell
winget install --id Neovim.Neovim
```

### git

```powershell
winget install --id Git.Git
```

### ripgrep and fd

```powershell
winget install --id BurntSushi.ripgrep.MSVC
winget install --id sharkdp.fd
```

### Node.js / npm

You should have this installed already for your module
```
https://docs.npmjs.com/cli/v12/configuring-npm/install
```

// TODO: THIS IS NOT CONFIRMED
// WINDOWS HAS "Visual Studio Installer which should have gcc"
### C compiler (`gcc`/`cc`) + `make` 


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
cargo --version
```

Make sure Neovim ≥ 0.11 is reported. After everything is on `PATH`, launch
`nvim` once so `lazy.nvim` can bootstrap and install the plugins.

