{ ... }:

{
    boot.loader = {
        efi = {
            canTouchEfiVariables = true;
        };
        grub = {
            enable = true;
            efiSupport = true;
            device = "nodev";
            useOSProber = true;
            configurationLimit = 10;
            catppuccin.enable = true; # From the catppuccin flake
        };
    }; 
}
