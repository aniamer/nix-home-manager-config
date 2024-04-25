{ stdenv, fetchurl }:

stdenv.mkDerivation {
  name = "scie-pants";
  sourceRoot = ".";
  phases = [ "installPhase" "patchPhase" ];

  src = fetchurl {
    url =
      "https://github.com/pantsbuild/scie-pants/releases/download/v0.11.0/scie-pants-macos-aarch64";
    sha256 = "5e847e91ad908eeb41b4fadb92c0b8c05938991c350d4940d25ce23b1f2ce97e";
  };

  installPhase = ''
    mkdir -p $out/bin
    cp $src $out/bin/pants
    chmod +x $out/bin/pants
  '';
}
