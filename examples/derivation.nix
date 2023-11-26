let
  derivationBuiltin = builtins.derivation
    {
      name = "test";
      builder = "/bin/sh";
      args = [ "-c" " echo foo > $out" ];
      # system = "x86_64-darwin";
      system = builtins.currentSystem;
    };
in
derivationBuiltin

