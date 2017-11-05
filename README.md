# POV-Ray-polynomials
Making POV-Ray statements for polynomial { }, poly { } and function { } from SymPy expressions for polynomials

The file ``POV-Ray Polynomials.ipynb`` is an iPython notebook file, which can be used with either [iPython](https://ipython.org) or [Jupyter](https://jupyter.org).
The [Python](https://www.python.org) version 3.x code in this file uses the [SymPy](http://www.sympy.org) library to process expressions for polynomials and creates code that is suitable for use in scene description language (SDL) files for [POV-Ray](http://www.povray.org) version 3.7.

The created code can be used in SDL files to create ``polynomial { }`` objects, ``poly { }`` objects and ``function { }`` expressions. The ``function { }`` expressions can, for example, be used to create isosurface objects.

The ``.pov`` files are sample POV-Ray SDL files that can be used to render such objects. The notebook creates the ``.inc`` files and the ``.pov`` files uses (i.e. includes) the SDL code in the ``.inc`` files.

The ``.pov`` files can be parsed and rendered with POV-Ray like this:
```shell
povray +w800 +h600 +a0.1 TorusPolynomial.pov
povray +w800 +h600 +a0.1 TorusPoly.pov
povray +w800 +h600 +a0.1 TorusIsosurface.pov
```

POV-Ray will then create these image files; ``TorusPolynomial.png``, ``TorusPoly.png`` and ``TorusIsosurface.png``, all being antialiased and having a size of 800x600 pixels.
