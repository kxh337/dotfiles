{config, pkgs, ...}:

{
  programs.git = {
    enable = true;
    aliases = {
      st = "status";
      br = "branch";
      cm = "commit";
      co = "checkout";
    };
  };
}
