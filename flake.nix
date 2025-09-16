{
  description = "My Host Configs";

  inputs = {
    inf.url = "gitlab:invra/inc";
  };

  outputs = { inf, ... }: inf.mkConfigs {
    mac-vm = {
      development = {
        scm = {
          git = {
            defaultBranch = "main";
            email = "identificationsucks@gmail.com";
            username = "Invra";
          };
          mercurial = {
            defaultBranch = "main";
            email = "identificationsucks@gmail.com";
            enable = true;
            username = "Invra";
          };
          types = [
            "GitLab"
            "GitHub"
          ];
        };
      };
      system = {
        dock = {
          autoHideDelay = 0.45;
          autohide = true;
          entries = {pkgs, ...}: [
            { path = "/System/Applications/Apps.app"; }
            { path = "/System/Applications/Mail.app"; }
            { path = "/System/Applications/Music.app"; }
            { path = "${pkgs.ghostty-bin}/Applications/Ghostty.app"; }
            { path = "${pkgs.zen}/Applications/Zen.app"; }
          ];
          orientation = "right";
          size = 40;
        };
        hostname = "NixOS";
        keyboard = {
          normalise = true;
          remapCapsToEscape = true;
        };
        timezone = "Australia/Sydney";
      };
      user = {
        displayName = "Invra";
        initialPassword = "123456";
        username = "invra";
      };
    };
    vm-aarch64 = {
      development = {
        scm = {
          git = {
            defaultBranch = "main";
            email = "identificationsucks@gmail.com";
            username = "Invra";
          };
          mercurial = {
            defaultBranch = "main";
            email = "identificationsucks@gmail.com";
            enable = true;
            username = "Invra";
          };
          types = [
            "GitLab"
            "GitHub"
          ];
        };
      };
      system = {
        dock = {
          autoHideDelay = 0.45;
          autohide = true;
          entries = {pkgs, ...}: [
            { path = "/System/Applications/Apps.app"; }
            { path = "/System/Applications/Mail.app"; }
            { path = "/System/Applications/Music.app"; }
            { path = "${pkgs.ghostty-bin}/Applications/Ghostty.app"; }
            { path = "${pkgs.zen}/Applications/Zen.app"; }
          ];
          orientation = "right";
          size = 40;
        };
        hostname = "NixOS";
        keyboard = {
          normalise = true;
          remapCapsToEscape = true;
        };
        timezone = "Australia/Sydney";
      };
      user = {
        displayName = "Invra";
        initialPassword = "123456";
        username = "invra";
      };
    };
  };
}
