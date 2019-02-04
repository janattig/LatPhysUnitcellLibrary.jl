################################################################################
#
#   SQUARE LATTICE
#
################################################################################



# Implementation
# - implementation 1
# - labels <: Any
function getUnitcellSquare(
            unitcell_type  :: Type{U},
            implementation :: Val{1}
        ) :: U where {LS,LB,S<:AbstractSite{LS,2},B<:AbstractBond{LB,2},U<:AbstractUnitcell{S,B}}

    # return a new Unitcell
    return newUnitcell(
        # Type of the unitcell
        U,
        # lattice vectors
        Vector{Float64}[
            Float64[1, 0],
            Float64[0, 1]
        ],
        # sites
        S[
            newSite(S, Float64[0,0], getDefaultLabelN(LS,1))
        ],
        # bonds
        B[
            newBond(B, 1,1, getDefaultLabel(LB), (+1,0)),
            newBond(B, 1,1, getDefaultLabel(LB), (-1,0)),
            newBond(B, 1,1, getDefaultLabel(LB), (0,+1)),
            newBond(B, 1,1, getDefaultLabel(LB), (0,-1))
        ]
    )
end





# Implementation
# - implementation 3
# - labels <: Any
function getUnitcellSquare(
            unitcell_type  :: Type{U},
            implementation :: Val{3}
        ) :: U where {LS,LB,S<:AbstractSite{LS,2},B<:AbstractBond{LB,2},U<:AbstractUnitcell{S,B}}

    # return a new Unitcell
    return newUnitcell(
        # Type of the unitcell
        U,
        # lattice vectors
        Vector{Float64}[
            Float64[1, 0],
            Float64[0, 1]
        ],
        # sites
        S[
            newSite(S, Float64[0.0,0.0], getDefaultLabelA(LS)),
            newSite(S, Float64[0.5,0.0], getDefaultLabelB(LS)),
            newSite(S, Float64[0.5,0.5], getDefaultLabelA(LS)),
            newSite(S, Float64[0.0,0.5], getDefaultLabelB(LS))
        ],
        # bonds
        B[
            newBond(B, 1,2, getDefaultLabelX(LB), (-1,0)),
            newBond(B, 1,4, getDefaultLabelY(LB), (0,-1)),
            newBond(B, 1,2, getDefaultLabelX(LB), (0,0)),
            newBond(B, 1,4, getDefaultLabelX(LB), (0,0)),

            newBond(B, 2,1, getDefaultLabelX(LB), (1,0)),
            newBond(B, 2,3, getDefaultLabelX(LB), (0,0)),
            newBond(B, 2,1, getDefaultLabelX(LB), (0,0)),
            newBond(B, 2,3, getDefaultLabelY(LB), (0,-1)),

            newBond(B, 3,4, getDefaultLabelX(LB), (0,0)),
            newBond(B, 3,2, getDefaultLabelX(LB), (0,0)),
            newBond(B, 3,4, getDefaultLabelY(LB), (1,0)),
            newBond(B, 3,2, getDefaultLabelY(LB), (0,1)),

            newBond(B, 4,3, getDefaultLabelX(LB), (0,0)),
            newBond(B, 4,1, getDefaultLabelY(LB), (0,1)),
            newBond(B, 4,3, getDefaultLabelY(LB), (-1,0)),
            newBond(B, 4,1, getDefaultLabelX(LB), (0,0)),
        ]
    )
end
