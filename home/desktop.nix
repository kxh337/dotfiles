{ pkgs, input,  ... }:

{
  home.username = "keih";
  home.homeDirectory = "/home/keih";

  programs.ghostty.enable = true;
  users.defaultUserShell = pkgs.zsh;
  users.users.keih.shell = pkgs.zsh;
}
