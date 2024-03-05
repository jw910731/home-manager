{ pkgs, ... }:
{
  imports = [
    ./xsession
    ./fcitx5
    ./git.nix
    ./gpg.nix
    ./zsh
    ./prismlauncher.nix
  ];

  home.packages = with pkgs;[
    vscode
    emacs
    fira-code
    nerdfonts
    brave
    (wrapOBS { plugins = [ obs-studio-plugins.obs-vaapi ]; })
    _1password
    _1password-gui
    noto-fonts-cjk
    pinentry-qt
    gnupg
    just
    telegram-desktop
    fzf
    most
    lsd
    bat
    prismlauncher
    python3
    pavucontrol
    zip
    unzip
    clang
    cmake
    dig
  ];
}