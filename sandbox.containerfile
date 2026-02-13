FROM fedora:43

RUN dnf -y install git zsh tmux stow vim helix curl sudo procps-ng

RUN useradd -m user && echo "user ALL=(ALL) NOPASSWD: ALL" > /etc/sudoers.d/user

USER user
WORKDIR /home/user

RUN git clone https://github.com/davidhinkes/dotfiles
RUN rm -rf .zshrc
WORKDIR /home/user/dotfiles
RUN stow zsh tmux helix vim

WORKDIR /home/user

RUN sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)" "" --unattended --keep-zshrc


CMD ["zsh"]
