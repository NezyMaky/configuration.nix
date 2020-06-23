{config, pkgs, ...}:

let
    unstable = import <unstable> {config.allowUnfree = true; }
in {
    imports = 
    [
        <nixpkgs/nixos/modules/virtualisation/google-compute-image.nix>
        ./users.nix
    ];

    nixpkgs.config = {
        allowUnfree = true;
        packageOverrides = pkgs: {
            unstable = import unstable {
                config = config.nixpkgs.config;
            };
        };
    };

    environment.systemPackeges = with pkgs; [
        git
    ];

    system.stateVersion = "20.03";
}