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
    pkgs = import nixpkgs { inherit system; };
  in
  {
    homeConfigurations."chromebook" =
      home-manager.lib.homeManagerConfiguration {
        inherit system pkgs;
        modules = [
          home-manager.nixosModules.home-manager
          {
            home-manager.users.kei = import ./users/kei;
          }
        ];
    };

    nixosConfigurations."desktop" =
      nixpkgs.lib.nixosSystem {
        inherit system pkgs;
        modules = [
          ./machines/desktop
          home-manager.nixosModules.home-manager
          {
            home-manager.users.kei = import ./users/kei;
          }
        ];
    };
  };
}
