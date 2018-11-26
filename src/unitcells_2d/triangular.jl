################################################################################
#
#   TRIANGULAR LATTICE
#
################################################################################



# REFERENCE / FALLBACK (for generic AbstractUnitcell type)

# referencing to individual functions by wrapping in Val()
function getUnitcellTriangular(
            unitcell_type  :: Type{U},
            implementation :: Int64 = 1
        ) :: U where {LS,LB,S<:AbstractSite{LS,2},B<:AbstractBond{LB,2},U<:AbstractUnitcell{S,B}}

    # call the respective subfunction by converting to val type
    return getUnitcellTriangular(unitcell_type, Val(implementation))
end

# Fallback for all implementations (if Val{V} is not found)
function getUnitcellTriangular(
            unitcell_type  :: Type{U},
            implementation :: Val{V}
        ) :: U where {LS,LB,S<:AbstractSite{LS,2},B<:AbstractBond{LB,2},U<:AbstractUnitcell{S,B},V}

    # fallback / fail due to missing implementation
    error("Implementation " * string(V) * " of triangular unitcell (label types " * string(LS) * " / " * string(LB) * ") not implemented yet")
end



# WRAPPER FUNCTIONS (for concrete Unitcell type) call general function

# wrapper function for passing no label types (and implementation) (DEFAULT)
function getUnitcellTriangular(
            implementation :: Int64    = 1
        ) :: Unitcell{Site{Int64,2},Bond{Int64,2}}
    # create a suitable unitcell of the given type
    return getUnitcellTriangular(Unitcell{Site{Int64,2},Bond{Int64,2}}, implementation)
end

# wrapper function for passing common label type (and implementation)
function getUnitcellTriangular(
            label_type     :: Type{L},
            implementation :: Int64    = 1
        ) :: Unitcell{Site{L,2},Bond{L,2}} where L
    # create a suitable unitcell of the given type
    return getUnitcellTriangular(Unitcell{Site{L,2},Bond{L,2}}, implementation)
end

# wrapper function for passing site / bond label types (and implementation)
function getUnitcellTriangular(
            label_type_site :: Type{LS},
            label_type_bond :: Type{LB},
            implementation  :: Int64 = 1
        ) :: Unitcell{Site{LS,2},Bond{LB,2}} where {LS,LB}
    # create a suitable unitcell of the given type
    return getUnitcellTriangular(Unitcell{Site{LS,2},Bond{LB,2}}, implementation)
end



# EXPORT OF THE FUNCTION
export getUnitcellTriangular



################################################################################
#
#   VERSION IMPLEMENTATIONS FROM HERE ON
#
################################################################################

# Implementation
# - implementation 1
# - labels <: Any
function getUnitcellTriangular(
            unitcell_type  :: Type{U},
            implementation :: Val{1}
        ) :: U where {LS,LB,S<:AbstractSite{LS,2},B<:AbstractBond{LB,2},U<:AbstractUnitcell{S,B}}

    # return a new Unitcell
    return newUnitcell(
        # Type of the unitcell
        U,
        # lattice vectors
        Vector{Float64}[
            Float64[sqrt(3.0)/2, -0.5],
            Float64[sqrt(3.0)/2, +0.5]
        ],
        # sites
        S[
            newSite(S, Float64[0,0], getDefaultLabel(LS))
        ],
        # bonds
        B[
            newBond(B, 1,1, getDefaultLabel(LB), (+1, 0)),
            newBond(B, 1,1, getDefaultLabel(LB), (-1, 0)),
            newBond(B, 1,1, getDefaultLabel(LB), ( 0,+1)),
            newBond(B, 1,1, getDefaultLabel(LB), ( 0,-1)),
            newBond(B, 1,1, getDefaultLabel(LB), (+1,-1)),
            newBond(B, 1,1, getDefaultLabel(LB), (-1,+1))
        ]
    )
end
