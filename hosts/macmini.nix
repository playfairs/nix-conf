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
      size = 50;
      autohide = true;
      orientation = "bottom";
      entries =
        { pkgs, ... }:
        [
          { path = "${pkgs.zen}/Applications/Zen.app"; }
          { path = "/Applications/Minesweeper.app"; }
          { path = "/Applications/MinesweeperPlus.app"; }
          { path = "/Applications/Discord.app"; }
          { path = "/Applications/WhatsApp.app"; }
          { path = "/Applications/Telegram.app"; }
          { path = "/Applications/Spotify.app"; }
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
