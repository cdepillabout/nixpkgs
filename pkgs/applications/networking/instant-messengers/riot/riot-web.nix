{ lib, stdenv, fetchurl, writeText, conf ? null }:

# Note for maintainers:
# Versions of `riot-web` and `riot-desktop` should be kept in sync.

stdenv.mkDerivation rec {
  pname = "riot-web";
  version = "1.4.0";

  src = fetchurl {
    url = "https://github.com/vector-im/riot-web/releases/download/v${version}/riot-v${version}.tar.gz";
    sha256 = "1si11hxkfn6sqaq1hddm5vkfrd0pghzwqld1wv4vxlb5jyn32qqk";
  };

  installPhase = let
    configFile = if (conf != null)
      then writeText "riot-config.json" conf
      else "$out/config.sample.json";
  in ''
    mkdir -p $out/
    cp -R . $out/
    ln -s ${configFile} $out/config.json
  '';

  meta = {
    description = "A glossy Matrix collaboration client for the web";
    homepage = http://riot.im/;
    maintainers = with stdenv.lib.maintainers; [ bachp pacien ];
    license = stdenv.lib.licenses.asl20;
    platforms = stdenv.lib.platforms.all;
    hydraPlatforms = [];
  };
}
