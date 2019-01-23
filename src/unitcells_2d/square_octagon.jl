################################################################################
#
#   SQUARE OCTAGON LATTICE
#
################################################################################



# Implementation
# - implementation 1 (simple)
# - labels <: Any
function getUnitcellSquareOctagon(
            unitcell_type  :: Type{U},
            implementation :: Val{1}
        ) :: U where {LS,LB,S<:AbstractSite{LS,2},B<:AbstractBond{LB,2}, U<:AbstractUnitcell{S,B}}

    # return a new Unitcell
    return newUnitcell(
        # Type of the unitcell
        U,
        # Bravais lattice vectors
        Vector{Float64}[
            Float64[3*sqrt(3.0)/4., -3*sqrt(3.0)/4.],
            Float64[3*sqrt(3.0)/4., 3*sqrt(3.0)/4.]
        ],
        # Sites
        S[
            newSite(S, Float64[0.0, 0.0], getDefaultLabelN(LS,1)),
            newSite(S, Float64[0.0, 1/sqrt(3.0)], getDefaultLabelN(LS,2)),
            newSite(S, Float64[-1/sqrt(3.0), 0.0], getDefaultLabelN(LS,3)),
            newSite(S, Float64[-1/sqrt(3.0), 1/sqrt(3.0)], getDefaultLabelN(LS,4)),
        ],
        # Bonds
        B[
            newBond(B, 1, 2, getDefaultLabel(LB), ( 0, 0)),
            newBond(B, 2, 4, getDefaultLabel(LB), ( 0, 0)),
            newBond(B, 4, 3, getDefaultLabel(LB), ( 0, 0)),
            newBond(B, 3, 1, getDefaultLabel(LB), ( 0, 0)),
            newBond(B, 2, 1, getDefaultLabel(LB), ( 0, 0)),
            newBond(B, 4, 2, getDefaultLabel(LB), ( 0, 0)),
            newBond(B, 3, 4, getDefaultLabel(LB), ( 0, 0)),
            newBond(B, 1, 3, getDefaultLabel(LB), ( 0, 0)),
            newBond(B, 3, 2, getDefaultLabel(LB), ( 0, -1)),
            newBond(B, 2, 3, getDefaultLabel(LB), ( 0, +1)),
            newBond(B, 4, 1, getDefaultLabel(LB), ( -1, 0)),
            newBond(B, 1, 4, getDefaultLabel(LB), ( +1, 0))
        ]
    )
end




# Implementation
# - implementation 2 (scaled shifted simple)
# - labels <: Any
function getUnitcellSquareOctagon(
            unitcell_type  :: Type{U},
            implementation :: Val{2}
        ) :: U where {LS,LB,S<:AbstractSite{LS,2},B<:AbstractBond{LB,2}, U<:AbstractUnitcell{S,B}}

    # return a new Unitcell
    return newUnitcell(
        # Type of the unitcell
        U,
        # Bravais lattice vectors
        Vector{Float64}[
            Float64[1.0 + 1/sqrt(2.0), -(1.0 + 1/sqrt(2.0))],
            Float64[1.0 + 1/sqrt(2.0),  (1.0 + 1/sqrt(2.0))]
        ],
        # Sites
        S[
            newSite(S, Float64[ 0.5, -0.5], getDefaultLabelN(LS,1)),
            newSite(S, Float64[ 0.5,  0.5], getDefaultLabelN(LS,2)),
            newSite(S, Float64[-0.5, -0.5], getDefaultLabelN(LS,3)),
            newSite(S, Float64[-0.5,  0.5], getDefaultLabelN(LS,4)),
        ],
        # Bonds
        B[
            newBond(B, 1, 2, getDefaultLabel(LB), ( 0, 0)),
            newBond(B, 2, 4, getDefaultLabel(LB), ( 0, 0)),
            newBond(B, 4, 3, getDefaultLabel(LB), ( 0, 0)),
            newBond(B, 3, 1, getDefaultLabel(LB), ( 0, 0)),
            newBond(B, 2, 1, getDefaultLabel(LB), ( 0, 0)),
            newBond(B, 4, 2, getDefaultLabel(LB), ( 0, 0)),
            newBond(B, 3, 4, getDefaultLabel(LB), ( 0, 0)),
            newBond(B, 1, 3, getDefaultLabel(LB), ( 0, 0)),
            newBond(B, 3, 2, getDefaultLabel(LB), ( 0, -1)),
            newBond(B, 2, 3, getDefaultLabel(LB), ( 0, +1)),
            newBond(B, 4, 1, getDefaultLabel(LB), ( -1, 0)),
            newBond(B, 1, 4, getDefaultLabel(LB), ( +1, 0))
        ]
    )
end




# Implementation
# - implementation 4 (simple Kitaev)
# - labels <: Any
function getUnitcellSquareOctagon(
            unitcell_type  :: Type{U},
            implementation :: Val{4}
        ) :: U where {LS,LB,S<:AbstractSite{LS,2},B<:AbstractBond{LB,2}, U<:AbstractUnitcell{S,B}}

    # return a new Unitcell
    return newUnitcell(
        # Type of the unitcell
        U,
        # Bravais lattice vectors
        Vector{Float64}[
            Float64[3*sqrt(3.0)/4., -3*sqrt(3.0)/4.],
            Float64[3*sqrt(3.0)/4., 3*sqrt(3.0)/4.]
        ],
        # Sites
        S[
            newSite(S, Float64[0.0, 0.0], getDefaultLabelN(LS,1)),
            newSite(S, Float64[0.0, 1/sqrt(3.0)], getDefaultLabelN(LS,2)),
            newSite(S, Float64[-1/sqrt(3.0), 0.0], getDefaultLabelN(LS,3)),
            newSite(S, Float64[-1/sqrt(3.0), 1/sqrt(3.0)], getDefaultLabelN(LS,4)),
        ],
        # Bonds
        B[
            newBond(B, 1, 2, getDefaultLabelX(LB), ( 0, 0)),
            newBond(B, 2, 4, getDefaultLabelY(LB), ( 0, 0)),
            newBond(B, 4, 3, getDefaultLabelX(LB), ( 0, 0)),
            newBond(B, 3, 1, getDefaultLabelY(LB), ( 0, 0)),
            newBond(B, 2, 1, getDefaultLabelX(LB), ( 0, 0)),
            newBond(B, 4, 2, getDefaultLabelY(LB), ( 0, 0)),
            newBond(B, 3, 4, getDefaultLabelX(LB), ( 0, 0)),
            newBond(B, 1, 3, getDefaultLabelY(LB), ( 0, 0)),
            newBond(B, 3, 2, getDefaultLabelZ(LB), ( 0, -1)),
            newBond(B, 2, 3, getDefaultLabelZ(LB), ( 0, +1)),
            newBond(B, 4, 1, getDefaultLabelZ(LB), ( -1, 0)),
            newBond(B, 1, 4, getDefaultLabelZ(LB), ( +1, 0))
        ]
    )
end


# Implementation
# - implementation 5 (scaled shifted simple Kitaev)
# - labels <: Any
function getUnitcellSquareOctagon(
            unitcell_type  :: Type{U},
            implementation :: Val{5}
        ) :: U where {LS,LB,S<:AbstractSite{LS,2},B<:AbstractBond{LB,2}, U<:AbstractUnitcell{S,B}}

    # return a new Unitcell
    return newUnitcell(
        # Type of the unitcell
        U,
        # Bravais lattice vectors
        Vector{Float64}[
            Float64[1.0 + 1/sqrt(2.0), -(1.0 + 1/sqrt(2.0))],
            Float64[1.0 + 1/sqrt(2.0),  (1.0 + 1/sqrt(2.0))]
        ],
        # Sites
        S[
            newSite(S, Float64[ 0.5, -0.5], getDefaultLabelN(LS,1)),
            newSite(S, Float64[ 0.5,  0.5], getDefaultLabelN(LS,2)),
            newSite(S, Float64[-0.5, -0.5], getDefaultLabelN(LS,3)),
            newSite(S, Float64[-0.5,  0.5], getDefaultLabelN(LS,4)),
        ],
        # Bonds
        B[
        newBond(B, 1, 2, getDefaultLabelX(LB), ( 0, 0)),
        newBond(B, 2, 4, getDefaultLabelY(LB), ( 0, 0)),
        newBond(B, 4, 3, getDefaultLabelX(LB), ( 0, 0)),
        newBond(B, 3, 1, getDefaultLabelY(LB), ( 0, 0)),
        newBond(B, 2, 1, getDefaultLabelX(LB), ( 0, 0)),
        newBond(B, 4, 2, getDefaultLabelY(LB), ( 0, 0)),
        newBond(B, 3, 4, getDefaultLabelX(LB), ( 0, 0)),
        newBond(B, 1, 3, getDefaultLabelY(LB), ( 0, 0)),
        newBond(B, 3, 2, getDefaultLabelZ(LB), ( 0, -1)),
        newBond(B, 2, 3, getDefaultLabelZ(LB), ( 0, +1)),
        newBond(B, 4, 1, getDefaultLabelZ(LB), ( -1, 0)),
        newBond(B, 1, 4, getDefaultLabelZ(LB), ( +1, 0))
        ]
    )
end
