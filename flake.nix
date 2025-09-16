{
  description = "My Host Configs";

  inputs = {
    inf.url = "gitlab:invra/inc";
  };

  outputs = { inf, ... }:
  let
    allFiles = builtins.attrNames (builtins.readDir ./hosts);

    nixFiles = builtins.filter (f: builtins.match ".*\\.nix$" f != null) allFiles;

    toAttr = file: {
      name = builtins.replaceStrings [".nix"] [""] file;
      value = import (./hosts + "/${file}");
    };

    hosts = builtins.listToAttrs (map toAttr nixFiles);
  in
  inf.mkConfigs hosts;
}
