{ config, pkgs, ... }:

{
  programs.neovim = {
    enable = true;
    defaultEditor = true;

    # CLI tools and LSPs Neovim depends on
    extraPackages = with pkgs; [
      ripgrep
      fd

      lua-language-server
      gopls
      nil
      stylua
    ];
  };

  xdg.configFile."nvim".source = ./config;
}

