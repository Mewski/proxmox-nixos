{
  lib,
  stdenv,
  fetchurl,
}:

stdenv.mkDerivation rec {
  pname = "unifont";
  version = "17.0.03";

  src = fetchurl {
    url = "mirror://gnu/unifont/unifont-${version}/unifont-${version}.tar.gz";
    hash = "sha256-miaqmt+o6x+RsM2bg+f5XqnhTG6FvnGqOrDfXLTmnDU=";
  };

  makeFlags = [
    "USRDIR=."
    "DESTDIR=$(out)"
  ];

  meta = with lib; {
    description = "";
    homepage = "https://unifoundry.com/unifont/";
    license = [ ];
    maintainers = with maintainers; [
      camillemndn
      julienmalka
    ];
    platforms = platforms.all;
  };
}
