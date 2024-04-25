{pkgs, ...}:
{
  imports = [
    ./shell.nix
  ];

  nix.settings.experimental-features = [ "nix-command" "flakes" ];  
  nix.settings.max-jobs = 8;

  nixpkgs.config.allowUnfree = true;

  fonts.fonts = with pkgs; [
    jetbrains-mono
  ];

  nixpkgs.config.permittedInsecurePackages = 
    [ "openssl-1.1.1v" ];
  

  programs.partition-manager.enable = true;

  environment.systemPackages = with pkgs; [
    vim # Do not forget to add an editor to edit configuration.nix! The Nano editor is also installed by default.
    wget
    htop
    curl
    micro
    os-prober
    file
    git
    fd
    coreutils-full
    bat
    wineWowPackages.full
    winetricks
    qbittorrent
    isoimagewriter
    dig
    jetbrains.pycharm-professional
    jetbrains.webstorm
    jetbrains.idea-ultimate
    jetbrains.datagrip
    jetbrains.clion
    neofetch
    openvpn
    openvpn3
    networkmanager-openvpn
    gcc12
    llvmPackages.libcxxClang
    llvmPackages.libllvm
    poetry
    cflow
    graphviz
    openrgb-with-all-plugins
    obsidian
    p7zip
    cmake
    lshw
    zsh 
    unrar
    jdk17
    zoom-us
    swiProlog
    gmp 
    gnumake 
    ncurses 
    xz
    libredwg
    binwalk
    jq
    python311
    enca
    xclip
    gst_all_1.gstreamer
    ffmpeg_5-full
  ];
}