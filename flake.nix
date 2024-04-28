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

    outputs = { self, nixpkgs, catppuccin, darwin, home-manager, ... }@inputs: 
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
                    # home-manager.nixosModules.default
                    # catppuccin.nixosModules.catppuccin
                    # {
                    #     home-manager = {
                    #         users."ethan".imports = [
                    #             ./hosts/bernoulli/home.nix
                    #         ];
                    #         useGlobalPkgs = true;
                    #     };
                    # }
                ];
            };
            newton = darwin.lib.darwinSystem {
                system = "aarch64-darwin";
                specialArgs = {inherit inputs;};
                modules = [
                    ./hosts/newton/configuration.nix
                    home-manager.darwinModules.default
                ];
            };
        };

        homeConfigurations = {
            bernoulli = home-manager.lib.homeManagerConfiguration {
                inherit pkgs;
                modules = [
                    ./hosts/bernoulli/home.nix
                ];
            };
        };
    };
}
