{ pkgs, input,  ... }:

{
  home.stateVersion = "25.05";
  home.username = "khitomi337";
  home.homeDirectory = "/home/khitomi337";

  programs.home-manager.enable = true;

  nix = {
    package = pkgs.nix;
    settings.experimental-features = [ "nix-command" "flakes" ];
  };

  imports = [
    ./nvim
  ];

  home.packages = with pkgs; [
    git
    curl
  ];
}

