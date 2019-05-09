################################################################################
#
#   (10,3)a
#   HYPEROCTAGON
#
################################################################################


# Implementation
# - implementation 1
# - labels <: Any
function getUnitcell_10_3_b(
            unitcell_type  :: Type{U},
            implementation :: Val{1}
        ) :: U where {LS,LB,S<:AbstractSite{LS,3},B<:AbstractBond{LB,3},U<:AbstractUnitcell{S,B}}

    # return a new Unitcell
    return newUnitcell(
        # Type of the unitcell
        U,
        # lattice vectors
        Vector{Float64}[
            Float64[-1.0,  1.0, -2.0],
            Float64[-1.0,  1.0,  2.0],
            Float64[ 2.0,  4.0,  0.0]
        ],
        # sites
        S[
            newSite(S, Float64[0.0, 0.0, 0.0], getDefaultLabelN(LS,1)),
            newSite(S, Float64[1.0, 1.0, 0.0], getDefaultLabelN(LS,2)),
            newSite(S, Float64[1.0, 2.0, 1.0], getDefaultLabelN(LS,3)),
            newSite(S, Float64[0.0,-1.0, 1.0], getDefaultLabelN(LS,4))
        ],
        # bonds
        B[
            newBond(B, 1,2, getDefaultLabel(LB), (0,0,0)),
            newBond(B, 1,4, getDefaultLabel(LB), (0,0,0)),
            newBond(B, 1,4, getDefaultLabel(LB), (1,0,0)),
            newBond(B, 2,1, getDefaultLabel(LB), (0,0,0)),
            newBond(B, 2,3, getDefaultLabel(LB), (0,0,0)),
            newBond(B, 2,3, getDefaultLabel(LB), (0,-1,0)),
            newBond(B, 3,2, getDefaultLabel(LB), (0,0,0)),
            newBond(B, 3,2, getDefaultLabel(LB), (0,1,0)),
            newBond(B, 3,4, getDefaultLabel(LB), (0,0,1)),
            newBond(B, 4,1, getDefaultLabel(LB), (0,0,0)),
            newBond(B, 4,1, getDefaultLabel(LB), (-1,0,0)),
            newBond(B, 4,3, getDefaultLabel(LB), (0,0,-1))
        ]
    )
end

# Implementation
# - implementation 4 (Kitaev for 1)
# - labels <: Any
function getUnitcell_10_3_b(
            unitcell_type  :: Type{U},
            implementation :: Val{4}
        ) :: U where {LS,LB,S<:AbstractSite{LS,3},B<:AbstractBond{LB,3},U<:AbstractUnitcell{S,B}}

    # return a new Unitcell
    return newUnitcell(
        # Type of the unitcell
        U,
        # lattice vectors
        Vector{Float64}[
            Float64[-1.0,  1.0, -2.0],
            Float64[-1.0,  1.0,  2.0],
            Float64[ 2.0,  4.0,  0.0]
        ],
        # sites
        S[
            newSite(S, Float64[0.0, 0.0, 0.0], getDefaultLabelN(LS,1)),
            newSite(S, Float64[1.0, 1.0, 0.0], getDefaultLabelN(LS,2)),
            newSite(S, Float64[1.0, 2.0, 1.0], getDefaultLabelN(LS,3)),
            newSite(S, Float64[0.0,-1.0, 1.0], getDefaultLabelN(LS,4))
        ],
        # bonds
        B[
            newBond(B, 1,2, getDefaultLabelZ(LB), (0,0,0)),
            newBond(B, 1,4, getDefaultLabelX(LB), (0,0,0)),
            newBond(B, 1,4, getDefaultLabelY(LB), (1,0,0)),
            newBond(B, 2,1, getDefaultLabelZ(LB), (0,0,0)),
            newBond(B, 2,3, getDefaultLabelX(LB), (0,0,0)),
            newBond(B, 2,3, getDefaultLabelY(LB), (0,-1,0)),
            newBond(B, 3,2, getDefaultLabelX(LB), (0,0,0)),
            newBond(B, 3,2, getDefaultLabelY(LB), (0,1,0)),
            newBond(B, 3,4, getDefaultLabelZ(LB), (0,0,1)),
            newBond(B, 4,1, getDefaultLabelX(LB), (0,0,0)),
            newBond(B, 4,1, getDefaultLabelY(LB), (-1,0,0)),
            newBond(B, 4,3, getDefaultLabelZ(LB), (0,0,-1))
        ]
    )
end



# Implementation
# - implementation 2 (alternative non Kitaev, site 4 shifted)
# - labels <: Any
function getUnitcell_10_3_b(
            unitcell_type  :: Type{U},
            implementation :: Val{1}
        ) :: U where {LS,LB,S<:AbstractSite{LS,3},B<:AbstractBond{LB,3},U<:AbstractUnitcell{S,B}}

    # return a new Unitcell
    return newUnitcell(
        # Type of the unitcell
        U,
        # lattice vectors
        Vector{Float64}[
            Float64[-1.0,  1.0, -2.0],
            Float64[-1.0,  1.0,  2.0],
            Float64[ 2.0,  4.0,  0.0]
        ],
        # sites
        S[
            newSite(S, Float64[0.0, 0.0, 0.0], getDefaultLabelN(LS,1)),
            newSite(S, Float64[1.0, 1.0, 0.0], getDefaultLabelN(LS,2)),
            newSite(S, Float64[1.0, 2.0, 1.0], getDefaultLabelN(LS,3)),
            newSite(S, Float64[2.0, 3.0, 1.0], getDefaultLabelN(LS,4))
        ],
        # bonds
        B[
            newBond(B, 1,2, getDefaultLabel(LB), (0,0,0)),
            newBond(B, 1,4, getDefaultLabel(LB), (0,0,-1)),
            newBond(B, 1,4, getDefaultLabel(LB), (1,0,-1)),
            newBond(B, 2,1, getDefaultLabel(LB), (0,0,0)),
            newBond(B, 2,3, getDefaultLabel(LB), (0,0,0)),
            newBond(B, 2,3, getDefaultLabel(LB), (0,-1,0)),
            newBond(B, 3,2, getDefaultLabel(LB), (0,0,0)),
            newBond(B, 3,2, getDefaultLabel(LB), (0,1,0)),
            newBond(B, 3,4, getDefaultLabel(LB), (0,0,0)),
            newBond(B, 4,1, getDefaultLabel(LB), (0,0,1)),
            newBond(B, 4,1, getDefaultLabel(LB), (-1,0,1)),
            newBond(B, 4,3, getDefaultLabel(LB), (0,0,0))
        ]
    )
end


# Implementation
# - implementation 5 (Kitaev for 2)
# - labels <: Any
function getUnitcell_10_3_b(
            unitcell_type  :: Type{U},
            implementation :: Val{5}
        ) :: U where {LS,LB,S<:AbstractSite{LS,3},B<:AbstractBond{LB,3},U<:AbstractUnitcell{S,B}}

    # return a new Unitcell
    return newUnitcell(
        # Type of the unitcell
        U,
        # lattice vectors
        Vector{Float64}[
            Float64[-1.0,  1.0, -2.0],
            Float64[-1.0,  1.0,  2.0],
            Float64[ 2.0,  4.0,  0.0]
        ],
        # sites
        S[
            newSite(S, Float64[0.0, 0.0, 0.0], getDefaultLabelN(LS,1)),
            newSite(S, Float64[1.0, 1.0, 0.0], getDefaultLabelN(LS,2)),
            newSite(S, Float64[1.0, 2.0, 1.0], getDefaultLabelN(LS,3)),
            newSite(S, Float64[2.0, 3.0, 1.0], getDefaultLabelN(LS,4))
        ],
        # bonds
        B[
            newBond(B, 1,2, getDefaultLabelZ(LB), (0,0,0)),
            newBond(B, 1,4, getDefaultLabelX(LB), (0,0,-1)),
            newBond(B, 1,4, getDefaultLabelY(LB), (1,0,-1)),
            newBond(B, 2,1, getDefaultLabelZ(LB), (0,0,0)),
            newBond(B, 2,3, getDefaultLabelX(LB), (0,0,0)),
            newBond(B, 2,3, getDefaultLabelY(LB), (0,-1,0)),
            newBond(B, 3,2, getDefaultLabelX(LB), (0,0,0)),
            newBond(B, 3,2, getDefaultLabelY(LB), (0,1,0)),
            newBond(B, 3,4, getDefaultLabelZ(LB), (0,0,0)),
            newBond(B, 4,1, getDefaultLabelX(LB), (0,0,1)),
            newBond(B, 4,1, getDefaultLabelY(LB), (-1,0,1)),
            newBond(B, 4,3, getDefaultLabelZ(LB), (0,0,0))
        ]
    )
end
