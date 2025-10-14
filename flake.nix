{
  description = "My Host Configs";

  outputs = { ... }:
  let
    allFiles = builtins.attrNames (builtins.readDir ./hosts);

    nixFiles = builtins.filter (f: builtins.match ".*\\.nix$" f != null) allFiles;

    toAttr = file: {
      name = builtins.replaceStrings [".nix"] [""] file;
      value = import (./hosts + "/${file}");
    };
 in
  builtins.listToAttrs (map toAttr nixFiles);
}
