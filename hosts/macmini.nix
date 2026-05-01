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
      orientation = "right";
      entries =
        { pkgs, ... }:
        [
          { path = "/Applications/Zen.app"; }
          { path = "/Applications/Spotify.app"; }
          # { path = "/Applications/Minesweeper.app"; }
          # { path = "/Applications/MinesweeperPlus.app"; }
          { path = "/Applications/Discord.app"; }
          # { path = "/Applications/WhatsApp.app"; }
          { path = "/Applications/Telegram.app"; }
          { path = "/Applications/Prism Launcher.app"; }
          { path = "/Applications/osu!.app"; }
          { path = "/Applications/Steam.app"; }
        ];
    };
    hostname = "playfairs";
    stageManager = {
      enable = true;
    };
  };
  user = {
    displayName = "playfairs";
    initialPassword = "root";
    username = "playfairs";
  };
}
