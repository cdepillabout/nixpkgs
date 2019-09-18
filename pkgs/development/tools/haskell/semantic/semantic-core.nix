{ mkDerivation, algebraic-graphs, base, containers, directory
, doctest, fetchgit, filepath, fused-effects, haskeline, hedgehog
, parsers, prettyprinter, prettyprinter-ansi-terminal, QuickCheck
, semigroupoids, stdenv, tasty, tasty-hedgehog, tasty-hunit, text
, transformers, trifecta, unordered-containers
}:
mkDerivation {
  pname = "semantic-core";
  version = "0.0.0.0";
  src = fetchgit {
    url = "https://github.com/github/semantic.git";
    sha256 = "0milj1v56y8scb1db4mbmz0mwydb599bk89dbc34g00n4dsi8xp0";
    rev = "9d2b5801e8f1c3072afa71a507f6711ca76a60aa";
    fetchSubmodules = true;
  };
  postUnpack = "sourceRoot+=/semantic-core; echo source root reset to $sourceRoot";
  libraryHaskellDepends = [
    algebraic-graphs base containers directory filepath fused-effects
    haskeline parsers prettyprinter prettyprinter-ansi-terminal
    semigroupoids text transformers trifecta unordered-containers
  ];
  testHaskellDepends = [
    base doctest fused-effects hedgehog QuickCheck tasty tasty-hedgehog
    tasty-hunit trifecta
  ];
  homepage = "https://github.com/github/semantic/tree/master/semantic-core#readme";
  description = "Semantic core intermediate language";
  license = stdenv.lib.licenses.mit;
}
