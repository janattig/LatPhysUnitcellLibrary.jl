# LatPhysUnitcellLibrary.jl

Unitcell library module of [`LatticePhysics.jl`](http://gitsrv.thp.uni-koeln.de/attig/LatticePhysics.jl). which contains all unitcell definitions from the main library.



## Contents

Provides implementations of various unitcells as well as code to generate code for unitcell implementations.
1.  unitcells in 2d
2.  unitcells in 3d
3.  code generation (both 2d and 3d)


## Installation (usage only):

For usage purposes only, you can install the package via the package mode in Julia (Pkg). However, since the package
is not listed in the Julia package repositories, you have to use
```julia
pkg(1.0)> add "git@gitsrv.thp.uni-koeln.de:attig/LatPhysUnitcellLibrary.jl.git"
```
Note: this can lead to Errors under Windows 10 due to incorrect SSH access. Use the following command instead:
```julia
pkg(1.0)> add "http://gitsrv.thp.uni-koeln.de/attig/LatPhysUnitcellLibrary.jl.git"
```
You will be prompted a username and password validation but it should work the same way.


## Installation (developement):

For developement purposes, it is best to clone the package via git to a developement
git location of your choice and use
```julia
pkg(1.0)> dev "path/to/the/repository/on/your/machine"
```

Alternatively, you could use
```julia
pkg(1.0)> dev "git@gitsrv.thp.uni-koeln.de:attig/LatPhysUnitcellLibrary.jl.git"
```
or (on Windows)
```julia
pkg(1.0)> dev "http://gitsrv.thp.uni-koeln.de/attig/LatPhysUnitcellLibrary.jl.git"
```
to clone a development version of the package to `~/.julia/dev/`.


Finally, develope the package as you are used to within the editor of your choice.
