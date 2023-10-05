{pkgs, ...}:
{
  # set up default shell
  programs.fish = {
    enable = true;
    shellAliases = {
      cat = "bat";
      find = "fd";
    };
  };
  users.defaultUserShell = pkgs.fish;
  environment.shells = with pkgs; [ fish ];

  #fish plugins 
  programs.starship.enable = true;
  programs.starship.interactiveOnly = true;
}