{
    description = "Nixos config flake";

    inputs = {
        nixpkgs.url = "github:nixos/nixpkgs/nixos-unstable";
        catppuccin.url = "github:catppuccin/nix";
        nixos-hardware.url = "github:NixOS/nixos-hardware/master";
        nix-gaming.url = "github:fufexan/nix-gaming";

        nixvim = {
            url = "github:nix-community/nixvim";
            inputs.nixpkgs.follows = "nixpkgs";
        };

        darwin = {
            url = "github:LnL7/nix-darwin";
            inputs.nixpkgs.follows = "nixpkgs";
        };

        home-manager = {
            url = "github:nix-community/home-manager";
            inputs.nixpkgs.follows = "nixpkgs";
        };

        # neovim-config = {
        #     url = "github:EthanJ-Brady/nvim";
        #     flake = false;
        # };
    };

    outputs = { self, nixpkgs, catppuccin, nixos-hardware, darwin, home-manager, ... }@inputs: 
    let
        pkgs = import nixpkgs {
            system = "x86_64-linux";
            config = { allowUnfree = true; };
        };
    in {
        nixosConfigurations = {
            bernoulli = nixpkgs.lib.nixosSystem {
                system = "x86_64-linux";
                specialArgs = {inherit inputs;};
                modules = [
                    ./hosts/bernoulli/configuration.nix
                    nixos-hardware.nixosModules.asus-zephyrus-ga502
                    catppuccin.nixosModules.catppuccin
                    inputs.nixvim.homeManagerModules.nixvim
                ];
            };
        };

        darwinConfigurations = {
            newton = darwin.lib.darwinSystem {
                system = "aarch64-darwin";
                specialArgs = { inherit inputs; };
                modules = [
                    ./hosts/newton/configuration.nix
                    inputs.home-manager.darwinModules.home-manager {
                        home-manager.useGlobalPkgs = true;
                        home-manager.extraSpecialArgs = { inherit inputs; };
                        home-manager.users."ethanbrady" = import ./hosts/newton/home.nix;
                    }
                    inputs.nixvim.nixDarwinModules.nixvim
                    # { _module.args = { inherit inputs; }; }
                ];
            };
        };

        homeConfigurations = {
            bernoulli = home-manager.lib.homeManagerConfiguration {
                inherit pkgs;
                modules = [
                    ./hosts/bernoulli/home.nix
                    catppuccin.homeManagerModules.catppuccin
                ];
                # extraSpecialArgs = {
                #     inherit neovim-config;
                # };
            };
        };
    };
}
