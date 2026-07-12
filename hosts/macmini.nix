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
        { ... }:
        [
          { path = "/Applications/Zen.app"; }
          { path = "/Applications/Spotify.app"; }
          { path = "/Applications/Music.app"; }
          { path = "/Applications/Discord.app"; }
          { path = "/Applications/Telegram.app"; }
          { path = "/Applications/Prism Launcher.app"; }
          { path = "/Applications/Steam.app"; }
          { path = "/Volumes/BARRACUDA/Applications/Xcode.app"; }
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
