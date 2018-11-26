################################################################################
#
#   CUBIC (SC / SIMPLE CUBIC) LATTICE
#
################################################################################



# REFERENCE / FALLBACK (for generic AbstractUnitcell type)

# referencing to individual functions by wrapping in Val()
function getUnitcellCubic(
            unitcell_type  :: Type{U},
            implementation :: Int64 = 1
        ) :: U where {LS,LB,S<:AbstractSite{LS,3},B<:AbstractBond{LB,3},U<:AbstractUnitcell{S,B}}

    # call the respective subfunction by converting to val type
    return getUnitcellCubic(unitcell_type, Val(implementation))
end

# Fallback for all implementations (if Val{V} is not found)
function getUnitcellCubic(
            unitcell_type  :: Type{U},
            implementation :: Val{V}
        ) :: U where {LS,LB,S<:AbstractSite{LS,3},B<:AbstractBond{LB,3},U<:AbstractUnitcell{S,B},V}

    # fallback / fail due to missing implementation
    error("Implementation " * string(V) * " of cubic unitcell (label types " * string(LS) * " / " * string(LB) * ") not implemented yet")
end



# WRAPPER FUNCTIONS (for concrete Unitcell type) call general function

# wrapper function for passing no label types (and implementation) (DEFAULT)
function getUnitcellCubic(
            implementation :: Int64    = 1
        ) :: Unitcell{Site{Int64,3},Bond{Int64,3}}
    # create a suitable unitcell of the given type
    return getUnitcellCubic(Unitcell{Site{Int64,3},Bond{Int64,3}}, implementation)
end

# wrapper function for passing common label type (and implementation)
function getUnitcellCubic(
            label_type     :: Type{L},
            implementation :: Int64    = 1
        ) :: Unitcell{Site{L,3},Bond{L,3}} where L
    # create a suitable unitcell of the given type
    return getUnitcellCubic(Unitcell{Site{L,3},Bond{L,3}}, implementation)
end

# wrapper function for passing site / bond label types (and implementation)
function getUnitcellCubic(
            label_type_site :: Type{LS},
            label_type_bond :: Type{LB},
            implementation  :: Int64 = 1
        ) :: Unitcell{Site{LS,3},Bond{LB,3}} where {LS,LB}
    # create a suitable unitcell of the given type
    return getUnitcellCubic(Unitcell{Site{LS,3},Bond{LB,3}}, implementation)
end



# EXPORT OF THE FUNCTION
export getUnitcellCubic



################################################################################
#
#   VERSION IMPLEMENTATIONS FROM HERE ON
#
################################################################################

# Implementation
# - implementation 1
# - labels <: Any
function getUnitcellCubic(
            unitcell_type  :: Type{U},
            implementation :: Val{1}
        ) :: U where {LS,LB,S<:AbstractSite{LS,3},B<:AbstractBond{LB,3},U<:AbstractUnitcell{S,B}}

    # return a new Unitcell
    return newUnitcell(
        # Type of the unitcell
        U,
        # lattice vectors
        Vector{Float64}[
            Float64[1, 0, 0],
            Float64[0, 1, 0],
            Float64[0, 0, 1]
        ],
        # sites
        S[
            newSite(S, Float64[0,0,0], getDefaultLabel(LS))
        ],
        # bonds
        B[
            newBond(B, 1,1, getDefaultLabel(LB), (+1,0,0)),
            newBond(B, 1,1, getDefaultLabel(LB), (-1,0,0)),
            newBond(B, 1,1, getDefaultLabel(LB), (0,+1,0)),
            newBond(B, 1,1, getDefaultLabel(LB), (0,-1,0)),
            newBond(B, 1,1, getDefaultLabel(LB), (0,0,+1)),
            newBond(B, 1,1, getDefaultLabel(LB), (0,0,-1))
        ]
    )
end
