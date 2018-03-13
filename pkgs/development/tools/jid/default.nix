# This file was generated by go2nix.
{ stdenv, buildGoPackage, fetchFromGitHub, fetchhg, fetchbzr, fetchsvn }:

buildGoPackage rec {
  name = "jid-${version}";
  version = "0.7.1";
  rev = "${version}";

  goPackagePath = "github.com/simeji/jid";

  src = fetchFromGitHub {
    owner = "simeji";
    repo = "jid";
    inherit rev;
    sha256 = "08snlqqch91w88zysfcavmqsafq93zzpkdjqkq1y7hx516fdaz1w";
  };

  goDeps = ./deps.nix;

  meta = with stdenv.lib; {
    description = "Incremental JSON digger";
    license = licenses.mit;
    maintainers = [ maintainers.profpatsch ];
  };
}