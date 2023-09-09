{pkgs, ...}:
{
  # set up default shell
  programs.fish.enable = true;
  users.defaultUserShell = pkgs.fish;
  environment.shells = with pkgs; [ fish ];

  programs.starship.enable = true;
  programs.starship.interactiveOnly = true;
}