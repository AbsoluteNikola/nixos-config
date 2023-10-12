{ config, pkgs, ... }:

{
  
  home.username = "nikola";
  home.homeDirectory = "/home/nikola";
  home.stateVersion = "23.05";
  programs.home-manager.enable = true;

  # basic configuration of git, please change to your own
  programs.git = {
    enable = true;
    userName = "Nikolay Rulev";
    userEmail = "nikolayr2001@gmail.com";
  };
  
  # Packages that should be installed to the user profile.
  home.packages = with pkgs; [
    firefox
    kate
    _1password-gui
    discord
    telegram-desktop
    vscode
    sublime4
    gh
    libsForQt5.yakuake
    libsForQt5.filelight
    libsForQt5.qt5.qttools
    coq
    coqPackages.coqide
  ];

}