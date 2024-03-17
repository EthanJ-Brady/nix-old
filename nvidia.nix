{ config, lib, pkgs, modulesPath, ... }:

{
    services.xserver.videoDrivers = [ "nvidia" "amdgpu" "displaylink" "modesetting" ];
    hardware.opengl = {
        enable = true;
        driSupport = true;
        driSupport32Bit = true;
    };
    hardware.nvidia = {
        modesetting.enable = true;
        open = false;
        package = config.boot.kernelPackages.nvidiaPackages.stable;
        prime = {
            sync.enable = true;
            amdgpuBusId = "PCI:5:0:0";
            nvidiaBusId = "PCI:14:0:0";
        };
    };
}
