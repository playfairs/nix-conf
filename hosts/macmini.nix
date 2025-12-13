{
  development.scm = {
    git = {
      defaultBranch = "main";
      email = "root@playfairs.cc";
      username = "playfairs";
    };
    types = [
      "GitHub"
      "GitLab"
    ];
  };
  system = {
    dock = {
      autoHideDelay = 3;
      size = 4000;
      autohide = true;
      orientation = "right";
      entries =
        { pkgs, ... }:
        [
          { path = "${pkgs.zen}/Applications/Zen.app"; }
          { path = "/Applications/WhatsApp.app"; }
          { path = "${pkgs.discord}/Applications/Discord.app"; }
          { path = "${pkgs.ghostty-bin}/Applications/Ghostty.app"; }
          { path = "${pkgs.steam}/Applications/Steam.app"; }
          { path = "${pkgs.zed-editor}/Applications/Zed.app"; }
        ];
    };
    hostname = "playfairs";
  };
  user = {
    displayName = "playfairs";
    initialPassword = "root";
    username = "playfairs";
  };
}
