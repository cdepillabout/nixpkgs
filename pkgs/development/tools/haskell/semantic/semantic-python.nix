{ mkDerivation, aeson, aeson-pretty, base, bytestring, containers
, directory, exceptions, fetchgit, filepath, fused-effects, process
, semantic-core, stdenv, streaming, streaming-bytestring
, streaming-process, tasty, tasty-hunit, text, tree-sitter
, tree-sitter-python, trifecta, unordered-containers
}:
mkDerivation {
  pname = "semantic-python";
  version = "0.0.0.0";
  src = fetchgit {
    url = "https://github.com/github/semantic.git";
    sha256 = "0milj1v56y8scb1db4mbmz0mwydb599bk89dbc34g00n4dsi8xp0";
    rev = "9d2b5801e8f1c3072afa71a507f6711ca76a60aa";
    fetchSubmodules = true;
  };
  postUnpack = "sourceRoot+=/semantic-python; echo source root reset to $sourceRoot";
  libraryHaskellDepends = [
    base fused-effects semantic-core tree-sitter tree-sitter-python
  ];
  testHaskellDepends = [
    aeson aeson-pretty base bytestring containers directory exceptions
    filepath fused-effects process semantic-core streaming
    streaming-bytestring streaming-process tasty tasty-hunit text
    tree-sitter tree-sitter-python trifecta unordered-containers
  ];
  homepage = "https://github.com/github/semantic/tree/master/semantic-python#readme";
  description = "Semantic support for Python";
  license = stdenv.lib.licenses.mit;
}
