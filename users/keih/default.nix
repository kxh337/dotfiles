{ config, pkgs, ... }:

{
  imports = [
    ../../modules/users/nvim
    ../../modules/users/git.nix
    #../../modules/users/zsh.nix
  ];

  programs.home-manager.enable = true;
  home = {
    username = "keih";
    homeDirectory = "/home/keih";
    stateVersion = "25.05";
    sessionVariables = {
      EDITOR = "nvim";
    };
  };

  programs.firefox.enable = true;
}
