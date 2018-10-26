{ stdenv
, buildPythonPackage
, fetchPypi
}:

buildPythonPackage rec {
  version = "1.16";
  pname = "patch";

  src = fetchPypi {
    inherit pname version;
    extension = "zip";
    sha256 = "1nj55hvyvzax4lxq7vkyfbw91pianzr3hp7ka7j12pgjxccac50g";
  };

  # No tests included in archive
  doCheck = false;

  meta = with stdenv.lib; {
    description = "A library to parse and apply unified diffs";
    homepage = https://github.com/techtonik/python-patch/;
    license = licenses.mit;
    maintainers = [ maintainers.igsha ];
  };

}
