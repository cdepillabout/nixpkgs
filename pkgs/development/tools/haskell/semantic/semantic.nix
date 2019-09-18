{ mkDerivation, aeson, algebraic-graphs, ansi-terminal, array
, async, attoparsec, base, bifunctors, bytestring, cmark-gfm
, containers, criterion, cryptohash, deepseq, directory
, directory-tree, fastsum, fetchgit, filepath, free, fused-effects
, fused-effects-exceptions, generic-monoid, ghc-prim, gitrev, Glob
, hashable, haskeline, hedgehog, hostname, hscolour, hspec
, hspec-core, hspec-expectations, http-client, http-client-tls
, http-media, http-types, HUnit, kdt, leancheck, lens, lingo
, mersenne-random-pure64, mtl, network, network-uri
, optparse-applicative, parallel, parsers, pretty-show
, prettyprinter, process, profunctors, proto3-suite, proto3-wire
, recursion-schemes, reducers, safe-exceptions, scientific
, semigroupoids, semilattices, shelly, split, stdenv, stm-chans
, streaming, tasty, tasty-golden, tasty-hedgehog, tasty-hspec
, tasty-hunit, template-haskell, temporary, text, these, time
, tree-sitter, tree-sitter-go, tree-sitter-haskell
, tree-sitter-java, tree-sitter-json, tree-sitter-php
, tree-sitter-python, tree-sitter-ruby, tree-sitter-tsx
, tree-sitter-typescript, unix, unliftio-core, unordered-containers
, vector
}:
mkDerivation {
  pname = "semantic";
  version = "0.7.0.0";
  src = fetchgit {
    url = "https://github.com/github/semantic.git";
    sha256 = "0milj1v56y8scb1db4mbmz0mwydb599bk89dbc34g00n4dsi8xp0";
    rev = "9d2b5801e8f1c3072afa71a507f6711ca76a60aa";
    fetchSubmodules = true;
  };
  isLibrary = true;
  isExecutable = true;
  libraryHaskellDepends = [
    aeson algebraic-graphs ansi-terminal array async attoparsec base
    bifunctors bytestring cmark-gfm containers cryptohash deepseq
    directory directory-tree fastsum filepath free fused-effects
    fused-effects-exceptions generic-monoid ghc-prim gitrev hashable
    haskeline hostname hscolour http-client http-client-tls http-media
    http-types kdt lens lingo mersenne-random-pure64 mtl network
    network-uri optparse-applicative parallel parsers pretty-show
    prettyprinter process profunctors proto3-suite proto3-wire
    recursion-schemes reducers safe-exceptions scientific semigroupoids
    semilattices shelly split stm-chans streaming template-haskell text
    these time tree-sitter tree-sitter-go tree-sitter-haskell
    tree-sitter-java tree-sitter-json tree-sitter-php
    tree-sitter-python tree-sitter-ruby tree-sitter-tsx
    tree-sitter-typescript unix unliftio-core unordered-containers
    vector
  ];
  executableHaskellDepends = [
    aeson algebraic-graphs async base bifunctors bytestring containers
    directory fastsum filepath free fused-effects
    fused-effects-exceptions hashable lingo mtl network process
    proto3-suite proto3-wire recursion-schemes safe-exceptions
    scientific semilattices shelly streaming text these tree-sitter
    unix
  ];
  testHaskellDepends = [
    aeson algebraic-graphs async base bifunctors bytestring containers
    directory fastsum filepath free fused-effects
    fused-effects-exceptions Glob hashable hedgehog hspec hspec-core
    hspec-expectations HUnit leancheck lingo mtl network process
    proto3-suite proto3-wire recursion-schemes safe-exceptions
    scientific semilattices shelly streaming tasty tasty-golden
    tasty-hedgehog tasty-hspec tasty-hunit temporary text these
    tree-sitter tree-sitter-json unix
  ];
  benchmarkHaskellDepends = [ base criterion ];
  homepage = "http://github.com/github/semantic#readme";
  description = "Framework and executable for analyzing and diffing untrusted code";
  license = stdenv.lib.licenses.mit;
}
