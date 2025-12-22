{ config, pkgs, ... }:

{
  home.stateVersion = "24.05";

  programs.home-manager.enable = true;

  imports = [
    ./nvim
  ];

  home.packages = with pkgs; [
    git
    curl
  ];
}

