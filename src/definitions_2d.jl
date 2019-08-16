################################################################################
#
#   DEFINITION OF 2D UNITCELLS
#
#   Code is included in subfiles
#
################################################################################


# SQUARE / RECTANGULAR LIKE

# Square lattice
include("unitcells_2d/square.jl")

# Square octagon lattice
include("unitcells_2d/square_octagon.jl")

# Shastry Sutherland lattice
include("unitcells_2d/shastry_sutherland.jl")



# TRIANGULAR LIKE

# Triangular lattice
include("unitcells_2d/triangular.jl")

# Honeycomb lattice
include("unitcells_2d/honeycomb.jl")

# Kagome lattice
include("unitcells_2d/kagome.jl")
