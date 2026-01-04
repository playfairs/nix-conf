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
      size = 70;
      autohide = true;
      orientation = "bottom";
      entries =
        { pkgs, ... }:
        [
          { path = "/Applications/Zen.app"; }
          { path = "/Applications/Spotify.app"; }
          { path = "/Applications/Minesweeper.app"; }
          { path = "/Applications/MinesweeperPlus.app"; }
          { path = "/Applications/Discord.app"; }
          { path = "/Applications/Discord Canary.app"; }
          { path = "/Applications/WhatsApp.app"; }
          { path = "/Applications/Telegram.app"; }
          { path = "${pkgs.ghostty-bin}/Applications/Ghostty.app"; }
          { path = "${pkgs.steam}/Applications/Steam.app"; }
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
