{ config, pkgs, ... }:

{
  # Home Manager needs a bit of information about you and the
  # paths it should manage.
 home.username = "aguoth";
  home.homeDirectory = "/home/aguoth";
  home.packages = [
    pkgs.htop
    pkgs.helix
    pkgs.nushell
    pkgs.zellij
    pkgs.git
    pkgs.nil
  ];
  # This value determines the Home Manager release that your
  # configuration is compatible with. This helps avoid breakage
  # when a new Home Manager release introduces backwards
  # incompatible changes.
  #
  # You can update Home Manager without changing this value. See
  # the Home Manager release notes for a list of state version
  # changes in each release.
  home.stateVersion = "23.05";

  # Let Home Manager install and manage itself.
  programs.home-manager.enable = true;

  programs.git = {
    enable = true;
    userName = "Alex Guoth";
    userEmail = "35575336+aguoth@users.noreply.github.com";
  };
   
  programs.helix = {
    enable = true;
    defaultEditor = true;
    settings = {
      theme = "gruvbox";
      editor = {
        line-number = "relative";
        true-color = true;
      };
    };  
  };

  programs.emacs = {
    enable = true;
    extraPackages = epkgs: [
      epkgs.agda2-mode
    ];
  };

  programs.zellij = {
    enable = true;
    enableBashIntegration = true;
    settings = {
      theme = "gruvbox-dark";  
    };
  };
 }
