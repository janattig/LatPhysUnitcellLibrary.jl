################################################################################
#
#   HONEYCOMB LATTICE
#
################################################################################



# REFERENCE / FALLBACK (for generic AbstractUnitcell type)

# Referencing to individual functions by wrapping in Val()
function getUnitcellHoneycomb(
            unitcell_type  :: Type{U},
            implementation :: Int64 = 1
        ) :: U where {LS,LB,S<:AbstractSite{LS,2},B<:AbstractBond{LB,2},U<:AbstractUnitcell{S,B}}

    # call the respective subfunction by converting to val type
    return getUnitcellHoneycomb(unitcell_type, Val(implementation))
end

# Fallback for all implementations (if Val{V} is not found)
function getUnitcellHoneycomb(
            unitcell_type  :: Type{U},
            implementation :: Val{V}
        ) :: U where {LS,LB,S<:AbstractSite{LS,2},B<:AbstractBond{LB,2},U<:AbstractUnitcell{S,B},V}

    # fallback / fail due to missing implementation
    error("Implementation " * string(V) * " of honeycomb unitcell (label types " * string(LS) * " / " * string(LB) * ") not implemented yet")
end



# WRAPPER FUNCTIONS (for concrete Unitcell type) call general function

# wrapper function for passing no label types (and implementation) (DEFAULT)
function getUnitcellHoneycomb(
            implementation :: Int64 = 1
        ) :: Unitcell{Site{Int64,2},Bond{Int64,2}}

    # create a suitable unitcell of the Unitcell type
    return getUnitcellHoneycomb(Unitcell{Site{Int64,2},Bond{Int64,2}}, implementation)
end

# wrapper function for passing common label type (and implementation)
function getUnitcellHoneycomb(
            label_type     :: Type{L},
            implementation :: Int64 = 1
        ) :: Unitcell{Site{L,2},Bond{L,2}} where L

    # create a suitable unitcell of the Unitcell type
    return getUnitcellHoneycomb(Unitcell{Site{L,2},Bond{L,2}}, implementation)
end

# wrapper function for passing site / bond label types (and implementation)
function getUnitcellHoneycomb(
            label_type_site :: Type{LS},
            label_type_bond :: Type{LB},
            implementation  :: Int64 = 1
        ) :: Unitcell{Site{LS,2},Bond{LB,2}} where {LS,LB}

    # create a suitable unitcell of the Unitcell type
    return getUnitcellHoneycomb(Unitcell{Site{LS,2},Bond{LB,2}}, implementation)
end



# EXPORT OF THE FUNCTION
export getUnitcellHoneycomb



################################################################################
#
#   VERSION IMPLEMENTATIONS FROM HERE ON
#
################################################################################



# Implementation
# - implementation 1
# - labels <: Any
function getUnitcellHoneycomb(
            unitcell_type  :: Type{U},
            implementation :: Val{1}
        ) :: U where {LS,LB,S<:AbstractSite{LS,2},B<:AbstractBond{LB,2}, U<:AbstractUnitcell{S,B}}

    # return a new Unitcell
    return newUnitcell(
        # Type of the unitcell
        U,
        # Bravais lattice vectors
        Vector{Float64}[
            Float64[sqrt(3.0)/2, -0.5],
            Float64[sqrt(3.0)/2, +0.5]
        ],
        # Sites
        S[
            newSite(S, Float64[0.0, 0.0],         getDefaultLabelN(LS,1)),
            newSite(S, Float64[1/sqrt(3.0), 0.0], getDefaultLabelN(LS,2))
        ],
        # Bonds
        B[
            newBond(B, 1, 2, getDefaultLabel(LB), (0, 0)),
            newBond(B, 1, 2, getDefaultLabel(LB), (-1, 0)),
            newBond(B, 1, 2, getDefaultLabel(LB), (0, -1)),
            newBond(B, 2, 1, getDefaultLabel(LB), (0, 0)),
            newBond(B, 2, 1, getDefaultLabel(LB), (1, 0)),
            newBond(B, 2, 1, getDefaultLabel(LB), (0, 1))
        ]
    )
end




# Implementation
# - implementation 4 (Kitaev)
# - labels <: Any
function getUnitcellHoneycomb(
            unitcell_type  :: Type{U},
            implementation :: Val{4}
        ) :: U where {LS,LB,S<:AbstractSite{LS,2},B<:AbstractBond{LB,2}, U<:AbstractUnitcell{S,B}}

    # return a new Unitcell
    return newUnitcell(
        # Type of the unitcell
        U,
        # Bravais lattice vectors
        Vector{Float64}[
            Float64[sqrt(3.0)/2, -0.5],
            Float64[sqrt(3.0)/2, +0.5]
        ],
        # Sites
        S[
            newSite(S, Float64[0.0, 0.0],         getDefaultLabelN(LS,1)),
            newSite(S, Float64[1/sqrt(3.0), 0.0], getDefaultLabelN(LS,2))
        ],
        # Bonds
        B[
            newBond(B, 1, 2, getDefaultLabelX(LB), (0, 0)),
            newBond(B, 1, 2, getDefaultLabelY(LB), (-1, 0)),
            newBond(B, 1, 2, getDefaultLabelZ(LB), (0, -1)),
            newBond(B, 2, 1, getDefaultLabelX(LB), (0, 0)),
            newBond(B, 2, 1, getDefaultLabelY(LB), (1, 0)),
            newBond(B, 2, 1, getDefaultLabelZ(LB), (0, 1))
        ]
    )
end
