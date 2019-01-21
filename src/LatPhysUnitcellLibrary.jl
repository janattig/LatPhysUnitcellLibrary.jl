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

# include code generation tools for unitcell files
include("code_generation_tools.jl")



# include 2d stuff
include("definitions_2d.jl")

# include 3d stuff
include("definitions_3d.jl")


# include the generation of wrapper functions of code
include("code_generation.jl")


# module end
end
