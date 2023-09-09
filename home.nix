{ config, pkgs, ... }:

{
  home.username = "nikola";
  home.homeDirectory = "/home/nikola";

  # basic configuration of git, please change to your own
  programs.git = {
    enable = true;
    userName = "Nikolay Rulev";
    userEmail = "nikolayr2001@gmail.com";
  };

  # Packages that should be installed to the user profile.
  home.packages = with pkgs; [
  
  ];

  # This value determines the home Manager release that your
  # configuration is compatible with. This helps avoid breakage
  # when a new home Manager release introduces backwards
  # incompatible changes.
  #
  # You can update home Manager without changing this value. See
  # the home Manager release notes for a list of state version
  # changes in each release.
  home.stateVersion = "23.05";

  # Let home Manager install and manage itself.
  programs.home-manager.enable = true;
}