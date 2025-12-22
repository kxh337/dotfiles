{
  description = "My dotfiles";

  inputs = {
    nixpkgs.url = "github:NixOS/nixpkgs/nixos-24.05";
    home-manager = {
      url = "github:nix-community/home-manager";
      inputs.nixpkgs.follows = "nixpkgs";
    };
  };

  outputs = { self, nixpkgs, home-manager, ... }:
  let
    system = "x86_64-linux";

    mkHome = { username, homeDirectory }:
      home-manager.lib.homeManagerConfiguration {
        pkgs = import nixpkgs {
          inherit system;
          config.allowUnfree = true;
        };

        modules = [
          ./home/common.nix
          {
            home.username = username;
            home.homeDirectory = homeDirectory;
          }
        ];
      };
  in
  {
    homeConfigurations = {
      chromebook = mkHome {
        username = "khitomi337";
        homeDirectory = "/home/khitomi337/";
      };
    };
  };
}

