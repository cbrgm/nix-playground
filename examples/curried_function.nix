let
  pkgs = import <nixpkgs> { };
  allSystems = [ "x86_64-linux" "aarch64-linux" "x86_64-darwin" "aarch64-darwin" ];

  test = x: pkgs.lib.genAttrs allSystems (system: x {
    foo = "${system}";
  });

in
test ({ foo }: {
  system = "bar";
})
