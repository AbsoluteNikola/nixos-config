{pkgs, ...}:
{
  imports = [
    ./shell.nix
  ];

  nixpkgs.config.allowUnfree = true;

  nixpkgs.config.permittedInsecurePackages = 
    [ "openssl-1.1.1v" ];
  
  environment.systemPackages = with pkgs; [
    vim # Do not forget to add an editor to edit configuration.nix! The Nano editor is also installed by default.
    wget
    micro
    os-prober
    file
    git
    fd
    bat
    wineWowPackages.full
    qbittorrent
    isoimagewriter
  ];
}