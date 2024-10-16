# Edit this configuration file to define what should be installed on
# your system.  Help is available in the configuration.nix(5) man page
# and in the NixOS manual (accessible by running ‘nixos-help’).

{ pkgs, inputs, ... }:

{
    imports = [
        ./hardware-configuration.nix
        ../../modules/nixos/grub.nix
        ../../modules/nixos/locale.nix
        ../../modules/nixos/pipewire.nix
        ../../modules/nixos/nvidia.nix
        ../../modules/nixos/via.nix
        ../../modules/nixos/gnome.nix
        ../../modules/nixos/logitech.nix        
        ../../modules/nixos/app/docker.nix
        ../../modules/nixos/services/syncthing.nix
        ../../modules/nixos/gaming.nix
        ../../modules/nixos/laptop.nix
        inputs.home-manager.nixosModules.default 
        inputs.nix-gaming.nixosModules.pipewireLowLatency
        inputs.nix-gaming.nixosModules.platformOptimizations
    ];

    syncthing.defaultDir = "/home/ethan/Documents";
    syncthing.user = "ethan";

    security.sudo.wheelNeedsPassword = false;

    boot.kernelPackages = pkgs.linuxPackages_xanmod_latest;

    networking.hostName = "bernoulli";
    networking.networkmanager.enable = true;

    nix.settings.experimental-features = [ "flakes" "nix-command" ];

    services.xserver.enable = true;
    services.xserver.displayManager.gdm.enable = true;
    services.xserver.displayManager.gdm.wayland = true;

    services.xserver.xkb = {
        layout = "us";
        variant = "";
    };

    services.printing.enable = true;
    hardware.bluetooth.enable = true;

    services.xserver.libinput.enable = true;

    programs.zsh.enable = true;
    programs.fish.enable = true;
    programs.noisetorch.enable = true;

    users.users.ethan = {
        isNormalUser = true;
        description = "Ethan Brady";
        extraGroups = [ "networkmanager" "wheel" "docker" ];
        packages = with pkgs; [
            firefox
            gnome.gnome-disk-utility
            armcord
            bottles
        ];
        shell = pkgs.fish;
    };

    services.xserver.displayManager.autoLogin.enable = true;
    services.xserver.displayManager.autoLogin.user = "ethan";

    systemd.services."getty@tty1".enable = false;
    systemd.services."autovt@tty1".enable = false;

    nixpkgs.config.allowUnfree = true;
    nixpkgs.system = "x86_64-linux";

    environment.systemPackages = with pkgs; [
        firefox
        gnome.gnome-disk-utility
        stow
        pciutils
        wl-clipboard
        vivaldi
        logseq
        wineWowPackages.unstable
        libgccjit #reqiured for nvim
        nodejs_21 #required for nvim
        binutils #required for nvim
        gcc_multi #required for nvim
        ripgrep #required for nvim
        fd #required for nvim
        cargo
        gnome-usage
        dotnet-sdk_8
        wl-color-picker
        home-manager
        appimage-run
        pavucontrol 
        melonDS
        nh
        kitty
        easyeffects
    ];

    environment.sessionVariables = {
        FLAKE = "/home/ethan/Dotfiles/nix";
    };

    fonts.packages = with pkgs; [
        (nerdfonts.override { fonts = [ "FiraCode" ]; })
    ];

    # Mounts the games partition
    # If this ever doesn't work, information to get this working again can be found in the disks app
    fileSystems."/run/media/ethan/Games" = {
        device = "/dev/nvme0n1p6";
    };

    catppuccin.flavour = "frappe";

    # List services that you want to enable:

    # Enable the OpenSSH daemon.
    # services.openssh.enable = true;

    # Open ports in the firewall.
    # networking.firewall.allowedTCPPorts = [ ... ];
    # networking.firewall.allowedUDPPorts = [ ... ];
    # Or disable the firewall altogether.
    # networking.firewall.enable = false;

    # This value determines the NixOS release from which the default
    # settings for stateful data, like file locations and database versions
    # on your system were taken. It‘s perfectly fine and recommended to leave
    # this value at the release version of the first install of this system.
    # Before changing this value read the documentation for this option
    # (e.g. man configuration.nix or on https://nixos.org/nixos/options.html).
    system.stateVersion = "23.11"; # Did you read the comment?

}
