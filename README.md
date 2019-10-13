# Nemoh
[NEMOH](https://lheea.ec-nantes.fr/logiciels-et-brevets/nemoh-presentation-192863.kjsp) is a Boundary Element Methods (BEM) code dedicated to the computation of first order wave loads on offshore structures (added mass, radiation damping, diffraction forces). It has been developed by researchers at École Centrale de Nantes for 30 years. Typical use is estimation of dynamic response of floating structures or performance assessment of wave energy converters.

NEMOH is the world only open source BEM code. Since January 2014, it has been released under the terms of the Apache 2 licence. Copy of the license may be obtained at http://www.apache.org/licenses/LICENSE-2.0. All the original documentation can be got from [NEMOH Installation](https://lheea.ec-nantes.fr/logiciels-et-brevets/nemoh-presentation-192863.kjsp).

This repository includes NEMOH v115 source and binaries. These sources have been got from the [public LHEEA Mercurial repository](http://130.66.47.2/cgi-bin/hgweb.cgi/nemoh/) that holds until version v118. The latest version that generates valid executables is the v115, and it has been shown that the improvements over the [public v113 executables](https://box.lheea.ec-nantes.fr/index.php/s/6MybIloTDqWSFDL) are so significant, that it worths to create this fork providing them to the offshore researchers community.

Some changes have been made to the original files:
- Binaries 'preprocessor', 'solver' and 'postprocessor', have been joined into a single 'nemoh' binary. See instructions below
- Removed id.dat file, and added estimated time (ET) after each problem solving
- Added [Code::Blocks](http://cbfortran.sourceforge.net/) .cbp and [Visual Studio](https://visualstudio.microsoft.com/) .sln project files to compile it using [GNU Fortran](https://gcc.gnu.org/fortran/) and [Intel Fortran](https://software.intel.com/en-us/fortran-compilers)
- 64 bits binaries included capable of solving meshes of >10000 panels
- Included DeepCWind example

 'Nemoh' binary options:
   - -h             Shows this help
   - -pre -preprocessor  Runs the preprocessor
   - -solver        Runs the solver
   - -post -postprocessor Runs the postprocessor
   - -all           Runs preprocessor, solver and postprocessor
