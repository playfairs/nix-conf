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
      autoHideDelay = 0.45;
      size = 40;
      autohide = true;
      orientation = "right";
      entries =
        { pkgs, ... }:
        [
          { path = "${pkgs.zen}/Applications/Zen.app"; }
          { path = "${pkgs.spotify}/Applications/Spotify.app"; }
          { path = "${pkgs.ghostty-bin}/Applications/Ghostty.app"; }
          { path = "${pkgs.steam}/Applications/Steam.app"; }
          { path = "${pkgs.zed-editor}/Applications/Zed.app"; }
        ];
    };
    hostname = "playfairs";
  };
  user = {
    displayName = "playfairs";
    initialPassword = "123456";
    username = "playfairs";
  };
}
