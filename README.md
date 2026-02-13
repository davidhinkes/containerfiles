# dockerfiles

A containerized development sandbox based on Fedora 43 with personal dotfiles and tooling pre-configured.

## What's included

- **Shell**: zsh with Oh My Zsh
- **Editors**: vim, helix
- **Tools**: git, tmux, stow, curl, sudo, procps-ng
- **Dotfiles**: Automatically cloned and stowed from [davidhinkes/dotfiles](https://github.com/davidhinkes/dotfiles) (zsh, tmux, helix, vim)
- **User**: Non-root `user` with passwordless sudo

## Build

```sh
podman build -f sandbox.containerfile -t sandbox .
```

Or, just refernce directly from URL:

```sh
podman build -f https://raw.githubusercontent.com/davidhinkes/containerfiles/refs/heads/main/sandbox.containerfile .
```
## Run

```sh
podman run -it sandbox
```
