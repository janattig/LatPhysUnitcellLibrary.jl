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

# TODO LIST
# --> TODO common interface getUnitcell(:square)
# --> TODO version vs. implementation
# --> TODO UnitcellDefinitions -> UnitcellLibrary





# module start
module LatPhysUnitcellLibrary



# include interface
include("interface.jl")



# include 2d stuff
include("definitions_2d.jl")

# include 3d stuff
include("definitions_3d.jl")



# module end
end
