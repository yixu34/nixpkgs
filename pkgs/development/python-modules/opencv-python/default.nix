{ lib
, buildPythonPackage
, fetchPypi
, numpy
}:

buildPythonPackage rec {
  pname = "opencv-python";
  version = "4.1.1.26";

  src = fetchPypi {
    inherit pname version;
    # Trust on first use
    format = "wheel";
    sha256 = "0000000000000000000000000000000000000000000000000000";
  };

  propagatedBuildInputs = [ numpy ];

  meta = with lib; {
    description = "Wrapper package for OpenCV python bindings";
    homepage = https://github.com/skvark/opencv-python;
    license = licenses.mit;
  };
}
