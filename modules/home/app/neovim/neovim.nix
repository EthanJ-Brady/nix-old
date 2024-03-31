{ config, pkgs, lib, ... }:

{
    options = {
        neovim.defaultEditor = lib.mkOption {
            type = lib.types.bool;
            default = true;
            description = "Set neovim as the default editor";
        };
    };

    config = {
        programs.neovim = {
            enable = true;
            defaultEditor = config.neovim.defaultEditor;
            vimAlias = true;
        };
    };
}
