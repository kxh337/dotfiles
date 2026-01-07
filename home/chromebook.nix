{ pkgs, input,  ... }:

{
  home.username = "khitomi337";
  home.homeDirectory = "/home/khitomi337";

  # TODO figure out how to get ghostty to work
  #programs.ghostty.enable = true;
}
