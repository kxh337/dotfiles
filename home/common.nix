{ pkgs, input,  ... }:

{
  home.stateVersion = "25.05";

  home.sessionVariables = {
		EDITOR = "nvim";
	};

  home.sessionPath = [
		"$HOME/go/bin"
	];

  home.packages = with pkgs; [
    curl
    go
  ];

  programs.home-manager.enable = true;

  programs.zsh = {
		enable = true;
		shellAliases = {
			vi = "nvim";
		};
		oh-my-zsh = {
			enable = true;
			theme = "bureau";
		};
	};

  programs.git = {
		enable = true;
		aliases = {
			st = "status";
			br = "branch";
			cm = "commit";
			co = "checkout";
		};
	};

  nix = {
    package = pkgs.nix;
    settings.experimental-features = [ "nix-command" "flakes" ];
  };

  imports = [
    ./nvim
  ];
}

