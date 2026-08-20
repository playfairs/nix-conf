{
  development.scm = {
    git = {
      defaultBranch = "master";
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
      size = 50;
      autohide = true;
      orientation = "bottom";
      entries =
        { pkgs, ... }:
        [
          { path = "/Applications/Helium.app"; }
          { path = "/Applications/Discord.app"; }
          { path = "/Applications/equibop.app"; }
          { path = "/Applications/Telegram.app"; }
          { path = "/Applications/Steam.app"; }
          { path = "/Volumes/BARRACUDA/Applications/Visual Studio Code.app"; }
          { path = "${pkgs.gram}/Applications/Gram.app"; }
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
