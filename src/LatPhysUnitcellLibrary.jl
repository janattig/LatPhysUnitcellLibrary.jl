################################################################################
#
#   module LatPhysUnitcellLibrary
#   -> LatticePhysics_Base
#   -> LinearAlgebra
#
#   --> PRE-IMPLEMENTED UNITCELLS 2D
#
#   --> PRE-IMPLEMENTED UNITCELLS 3D
#
################################################################################





# module start
module LatPhysUnitcellLibrary


# using the Base module
using LatPhysBase


# include interface
include("interface.jl")

# include code generation for unitcell files
include("code_generation.jl")



# include 2d stuff
include("definitions_2d.jl")

# include 3d stuff
include("definitions_3d.jl")



# module end
end
