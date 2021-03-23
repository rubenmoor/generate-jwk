{ mkDerivation, aeson-pretty, base, bytestring, jose, stdenv }:
mkDerivation {
  pname = "generate-jwk";
  version = "1.0.0.0";
  src = ./.;
  isLibrary = false;
  isExecutable = true;
  executableHaskellDepends = [ aeson-pretty base bytestring jose ];
  license = "unknown";
  hydraPlatforms = stdenv.lib.platforms.none;
}
