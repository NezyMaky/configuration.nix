{
    imports =
    [
        <nixpkgs/nixos/modules/programs/zsh/zsh.nix>
    ];

    programs.zsh = {
        enable = true;
    };

    users.users.nezymaky = {
        isNormalUser = true;
        home = "/home/nezymaky";
        shell = "/run/current-system/sw/bin/zsh"
        extraGroups = [ "wheel" ];
        openssh.authorizedKeys.keys = [ "ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAACAQDCFFMm7b5FgVhYc6K01JBED2kljHIpxUwF1ZXdvYcsq3Pv2TwjrYRjJcp3FZc0fsEIn72b784uVVK3NgE9Zt+AHI1CVDpe3TYfGyTEj9Yh8vSIz+SWXc87BLO5NfmoPG/0RgH1DLmNjxzRYoLPLtZ5zShrLRO9MgbPAt8kl7/qh2Vq/JycluHaTkAkQEiihTKjNk+rrLtHHSk3NHSxsaoQaJOhffrExa00YKmEXpjxRrAcoK8XxfAojtfJ3N8LyBwkp1XlwRiRQ/1gdmlsdLPuvYh9Ir25m/XAPb4vPHva3Fqe+TnBZNYeAC+ABwdT9fBLoQciTcDTQMeS/0UGdHSpzzwWstieofq/CCkecNlzP0ez3D33Yc77e9x107dPnTdmZ9x4ni1pVU7BzLcKjG8hzyFJg4UFqJhDiajXujUKLDNxoeok2c3aPb+iinBOCy91JpeNtTtP5XwftWGAwyOgIfDk1VTNI+pj8r/D2zig+2jy7XRZVZjPHHcWi0Iregt//TyelDrJE69gB34dwvclrL3efPn7GF1flK4gZfXdsKa9uemtVsKRfjvAnzX+6/kRW1YILyoUuovkwIZAE6qABD0FJ7yUE2UgIlrsfrE2LGDIPG4T7GcMXqRDjpfLOQhAPd2RDNtOClBQEVZ3nXJ/em0PU9YXlTTzeS/tHBhBjw==" ];
    };
}