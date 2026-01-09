{ config, pkgs, ... }:

{
  imports = [
    ../../modules/users/nvim
    ../../modules/users/git.nix
    ../../modules/users/steam.nix
    ../../modules/users/zsh.nix
  ];

  programs.home-manager.enable = true;
  home = {
    username = "keih"
    homedirectory = "/home/keih"
    stateVerison = "25.05";
  }

  programs.firefox.enable = true;

  # Define a user account. Don't forget to set a password with ‘passwd’.
  users.users.keih = {
    isNormalUser = true;
    description = "Kei Hitomi";
    extraGroups = [ "networkmanager" "wheel" ];
    shell = pkgs.zsh;
  };

  users.defaultUserShell = pkgs.zsh;

  # Environment Variable Definitions
  environment.variables = rec {
    EDITOR = "nvim";
  };
}
