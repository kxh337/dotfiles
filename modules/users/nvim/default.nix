{ pkgs, ... }:

{
  fonts.fontconfig.enable = true;
  home.packages = [
    pkgs.nerd-fonts.mononoki
  ];

  programs.neovim = {
    enable = true;
    defaultEditor = true;

    # CLI tools and LSPs Neovim depends on
    extraPackages = with pkgs; [
      ripgrep
      fd
      tree-sitter

      lua-language-server
      gopls
      nil
      nixd
      stylua
    ];
  };

  home.file.".config/nvim" = {
    source = ./config;
    recursive = true;
  };

}

