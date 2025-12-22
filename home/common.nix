{ pkgs, input,  ... }:

{
  home.stateVersion = "25.05";
  home.username = "khitomi337";
  home.homeDirectory = "/home/khitomi337";

  programs.home-manager.enable = true;
  programs.git = {
		enable = true;
		aliases = {
			st = "status";
			br = "branch";
			cm = "commit";
			co = "checkout";
		};
	};

  # TODO: Get ghostty to work
  # Requires use of nixgl
  #programs.ghostty.enable = true;

  nix = {
    package = pkgs.nix;
    settings.experimental-features = [ "nix-command" "flakes" ];
  };

  imports = [
    ./nvim
  ];

  home.packages = with pkgs; [
    curl
    go
  ];
}

