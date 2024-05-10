{ config, lib, pkgs, modulesPath, ... }:

{
    # Find the bus IDs with `nix shell nixpkgs#pciutils -c lspci | grep ' VGA '`

    services.xserver.videoDrivers = [ "nvidia" "amdgpu" "displaylink" "modesetting" ];
    # services.xserver.videoDrivers = [ "nvidia" "nvidia-dkms" "displaylink" "modesetting" ];
    hardware.opengl = {
        enable = true;
        driSupport = true;
        driSupport32Bit = true;
    };
    hardware.nvidia = {
        modesetting.enable = true;
        open = false;
        package = config.boot.kernelPackages.nvidiaPackages.beta;
        powerManagement.enable = true;
        prime = {
            # offload = {
            #     enable = true;
            #     enableOffloadCmd = true;
            # };
            offload.enable = false;
            sync.enable = true;
            # amdgpuBusId = "PCI:5:0:0";
            # nvidiaBusId = "PCI:1:0:0";
            # nvidiaBusId = "PCI:1:0:0";
        };
    };
    # environment.sessionVariables.WLR_DRM_DEVICES = "/dev/dri/card1";
    # environment.sessionVariables.LIBVA_DRIVER_NAME = "nvidia";
    # environment.sessionVariables.XDG_SESSION_TYPE = "wayland";
    # environment.sessionVariables.GBM_BACKEND = "nvidia-drm";
    # environment.sessionVariables.__GLX_VENDOR_LIBRARY_NAME = "nvidia";
    environment.sessionVariables.WLR_NO_HARDWARE_CURSORS = "1";
}
