{
  description = "My Nix Infrastructure";

  inputs = {
    nixpkgs.url = "github:NixOS/nixpkgs/nixos-25.05";
    home-manager = {
      # Follow corresponding `release` branch from Home Manager
      url = "github:nix-community/home-manager/release-25.05";
      inputs.nixpkgs.follows = "nixpkgs";
    };
  };

  outputs = { self, nixpkgs, home-manager, ... }:
  let
    system = "x86_64-linux";
    pkgs = import nixpkgs {
      inherit system;
      config = {
        allowUnfree = true;
        permittedInsecurePackages = [
          "electron-36.9.5" # TODO remove this when webcord is updated
        ];
      };
      
    };
  in
  {
    homeConfigurations."chromebook" =
      home-manager.lib.homeManagerConfiguration {
        inherit system pkgs;
        modules = [
          home-manager.nixosModules.home-manager
          {
            #home-manager.users.khitomi337 = import ./users/khitomi337;
          }
        ];
    };

    nixosConfigurations."desktop" = nixpkgs.lib.nixosSystem {
        inherit system pkgs;
        modules = [
          ./machines/desktop
          home-manager.nixosModules.home-manager
          {
            home-manager.users.keih = import ./users/keih;
          }
        ];
    };
  };
}
