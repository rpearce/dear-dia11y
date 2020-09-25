let
  cfg = import ../nix/default.nix {};
  hp = cfg.haskellPackages;
in
{}:

  hp.shellFor {
    packages = p: [
      p.dear-dia11y
    ];

    buildInputs = with hp; [
      cabal-install
      ghcid
      hlint
      hp.dear-dia11y
      ormolu
    ];

    withHoogle = true;
  }
