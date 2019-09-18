# EXTRA HASKELL PACKAGES NOT ON HACKAGE
#
# This file should only contain packages that are not in ./hackage-packages.nix.
# Attributes in this set should be nothing more than a callPackage call.
# Overrides to these packages should go to either configuration-nix.nix,
# configuration-common.nix or to one of the compiler specific configuration
# files.
self: super: {

  multi-ghc-travis = throw ("haskellPackages.multi-ghc-travis has been renamed"
    + "to haskell-ci, which is now on hackage");

  # The following semantic packages can be removed when semantic is released to
  # Hackage.
  # https://github.com/github/semantic/issues/16
  #
  # cabal2nix --subpath semantic-core https://github.com/github/semantic.git > pkgs/development/tools/haskell/semantic/semantic-core.nix
  semantic-core = self.callPackage ../tools/haskell/semantic/semantic-core.nix {};
  semantic-python = self.callPackage ../tools/haskell/semantic/semantic-python.nix {};
  semantic-github = self.callPackage ../tools/haskell/semantic/semantic.nix {};

  tree-sitter_0_2_0_0 =
    self.callHackageDirect
      {
        pkg = "tree-sitter";
        ver = "0.2.0.0";
        sha256 = "0l37rxhvk68xp68m30v8whkfbhrv2r5v9p76qpmj3f0fqlcba0sl";
      }
      {};

  tree-sitter-python_0_2_0_0 =
    self.callHackageDirect
      {
        pkg = "tree-sitter-python";
        ver = "0.2.0.0";
        sha256 = "0fxfkjnxrj1kg44grkr96npaayzhq04450bb4a3v88gv28f04s2c";
      }
      {};

  swagger2_2_3_1_1 = self.callHackage "swagger2" "2.3.1.1" {};

  # https://github.com/channable/vaultenv/issues/1
  vaultenv = self.callPackage ../tools/haskell/vaultenv { };

}
