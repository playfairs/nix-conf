{
  desktop = {
    plasma.enable = false;
    hyprland = {
      enable = true;
      monitors = [
        {
          name = "eDP-1";
          position = "0x0";
          refreshRate = 144;
          resolution = "1920x1080";
          scale = 1;
        }
      ];
    };
  };
  development = {
    git = {
      defaultBranch = "main";
      email = "root@playfairs.cc";
      types = [
        "GitLab"
        "GitHub"
      ];
      username = "playfairs";
    };
  };
  system = {
    hardware-module = ./hardware/laptop-x86.nix;
    graphics = {
      blacklists = [
        "nouveau"
      ];
      wanted = [
        "modesetting"
        # "nvidia"
      ];

      # nvidia.prime = {
      #   intelBusId = "PCI:0:2:0";
      #   nvidiaBusId = "PCI:1:0:0";
      # };
    };
    greeter = "ly";
    hostname = "NixOS";
    interfaces = { };
    kernelParams = [
      "intel_iommu=on"
      "iommu=pt"
      "acpi_backlight=video"
    ];
    locale = "en_AU.UTF-8";
    networking = {
      dhcpEnabled = true;
      firewallEnabled = false;
      networkmanager = true;
    };
    services = {
      mongodb = {
        enable = true;
      };
      ssh = {
        enable = true;
      };
    };
    timezone = "American/Chicago";
    boot.efiDirectory = "/boot";
  };
  user = {
    displayName = "playfairs";
    initialPassword = "root";
    username = "playfairs";
  };
}
