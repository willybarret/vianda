FROM registry.fedoraproject.org/fedora-toolbox:latest

RUN dnf install -y dnf-plugins-core \
 && dnf copr enable -y wezfurlong/wezterm-nightly \
 && dnf copr enable -y lihaohong/yazi \
 && dnf install -y \
      wezterm neovim helix gitui btop fastfetch yazi \
      fzf ripgrep fd-find eza zoxide git \
      gcc gcc-c++ make tree-sitter-cli \
      jq poppler-utils ImageMagick \
 && dnf clean all

RUN printf '%s\n' \
  '[[ $- == *i* ]] || return' \
  'eval "$(fzf --bash)"' \
  'eval "$(zoxide init bash)"' \
  'alias ls="eza --icons"' \
  'alias ll="eza -l --icons --git"' \
  'alias vim="nvim"' \
  > /etc/profile.d/vianda.sh
