################################################################################
#
#   HONEYCOMB LATTICE
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
