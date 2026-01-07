{
  description = "Home Manager configuration";

  inputs = {
    # Increment release branch for NixOS
    nixpkgs.url = "github:NixOS/nixpkgs/nixos-25.05";
    home-manager = {
      # Follow corresponding `release` branch from Home Manager
      url = "github:nix-community/home-manager/release-25.05";
      inputs.nixpkgs.follows = "nixpkgs";
    };
  };

  outputs = { nixpkgs, home-manager, ... }: {
    homeConfigurations."chromebook" = home-manager.lib.homeManagerConfiguration {
      pkgs = nixpkgs.legacyPackages.x86_64-linux;
      modules = [
        ./home/chromebook.nix
        ./home/common.nix
      ];
    };
    homeConfigurations."desktop" = home-manager.lib.homeManagerConfiguration {
      pkgs = nixpkgs.legacyPackages.x86_64-linux;
      modules = [
        ./home/desktop.nix
        ./home/common.nix
      ];
    };
  };
}
