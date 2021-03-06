// Tor Olav Kristensen, 2017-11-03
// https://github.com/t-o-k, http://subcube.com, http://povray.org

#version 3.7;

global_settings { ambient_light color rgb <0.1, 0.1, 0.1> }

#declare rMaj = 4;
#declare rMin = 1;

// For torus in the xz-plane
#declare pMinBox = <-rMaj -rMin, -rMin, -rMaj -rMin>;
#declare pMaxBox = <+rMaj +rMin, +rMin, +rMaj +rMin>;

#include "TorusPolynomial.inc"

polynomial {
    TorusPolynomial
    bounded_by { box { pMinBox, pMaxBox } }
    pigment { color rgb <0.6, 0.2, 1.0> }
}

torus {
    rMaj, rMin
    pigment { color rgb <0.2, 0.6, 1.0> }
    translate 16*z
}

background { color rgb <0.1, 0.1, 0.1> }

light_source {
    50*<2, 3, -1>
    color rgb <1.0, 1.0, 1.0>
}

camera {
    location <0, 7, -10>
    look_at <0, 0, 0>
}
