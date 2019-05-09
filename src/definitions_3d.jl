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
# diamond lattice
include("unitcells_3d/diamond.jl")
# Pyrochlore lattice
include("unitcells_3d/pyrochlore.jl")

# (8,3)a lattice
include("unitcells_3d/8_3_a.jl")
# (8,3)b lattice
include("unitcells_3d/8_3_b.jl")
# (8,3)c lattice
include("unitcells_3d/8_3_c.jl")
# (8,3)n lattice
include("unitcells_3d/8_3_n.jl")

# (9,3)a lattice
include("unitcells_3d/9_3_a.jl")

# (10,3)a lattice
include("unitcells_3d/10_3_a.jl")
# (10,3)b lattice
include("unitcells_3d/10_3_b.jl")
# (10,3)c lattice
include("unitcells_3d/10_3_c.jl")
# (10,3)d lattice
include("unitcells_3d/10_3_d.jl")
