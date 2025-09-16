{
  description = "My Host Configs";

  inputs = {
    inf.url = "gitlab:invra/inc";
  };

  outputs = { inf, ... }: inf.mkConfigs {
    vm-aarch64 = import ./hosts/vm-aarch64.nix;
    vm-x86 = import ./hosts/vm-x86.nix;
    mac-vm = import ./hosts/mac-vm.nix;
    macbook = import ./hosts/macbook.nix;
    macmini = import ./hosts/macmini.nix;
    laptop-x86 = import ./hosts/laptop-x86.nix;
  };
}
