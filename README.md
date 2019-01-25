# LatPhysUnitcellLibrary.jl

Unitcell library module of [`LatticePhysics.jl`](https://github.com/janattig/LatticePhysics.jl).



## Contents

Provides implementations of various unitcells as well as code to generate code for unitcell implementations.
1.  unitcells in 2d
2.  unitcells in 3d
3.  code generation (both 2d and 3d)


## Installation

You can install the package via the package mode in Julia (Pkg). However, since the package
is not listed in the Julia package repositories, you have to first install the unregistered
dependencies manually with
```julia
(v1.0) pkg> add "https://github.com/janattig/LatPhysBase.jl"
```
to finally install the main package with
```julia
(v1.0) pkg> add "https://github.com/janattig/LatPhysUnitcellLibrary.jl"
```
