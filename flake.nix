{
    description = "Nixos config flake";

    inputs = {
        nixpkgs.url = "github:nixos/nixpkgs/nixos-unstable";
        catppuccin.url = "github:catppuccin/nix";

        darwin = {
            url = "github:LnL7/nix-darwin";
            inputs.nixpkgs.follows = "nixpkgs";
        };

        home-manager = {
            url = "github:nix-community/home-manager";
            inputs.nixpkgs.follows = "nixpkgs";
        };
    };

    outputs = { self, nixpkgs, catppuccin, darwin, home-manager, ... }@inputs: {
        nixosConfigurations.bernoulli = nixpkgs.lib.nixosSystem {
            specialArgs = {inherit inputs;};
            modules = [
                ./hosts/bernoulli/configuration.nix
                home-manager.nixosModules.default
                catppuccin.nixosModules.catppuccin
            ];
        };
        darwinConfigurations.newton = darwin.lib.darwinSystem {
            system = "aarch64-darwin";
            specialArgs = {inherit inputs;};
            modules = [
                ./hosts/newton/configuration.nix
                home-manager.darwinModules.default
            ];
        };
    };
}
