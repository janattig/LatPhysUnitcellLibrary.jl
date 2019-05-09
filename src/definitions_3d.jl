################################################################################
#
#   DEFINITION OF 3D UNITCELLS
#
#   FOLLOWING UNITCELLS ARE IMPLEMENTED
#   - cubic
#
#   Code is included in subfiles
#
################################################################################

# Cubic lattice
include("unitcells_3d/cubic.jl")

# FCC lattice (face centered cubic)
include("unitcells_3d/fcc.jl")

# Pyrochlore lattice
include("unitcells_3d/pyrochlore.jl")

# (10,3)a lattice
include("unitcells_3d/10_3_a.jl")
# (10,3)b lattice
include("unitcells_3d/10_3_b.jl")
