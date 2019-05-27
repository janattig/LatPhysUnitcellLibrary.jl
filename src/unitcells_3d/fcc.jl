################################################################################
#
#   FACE CENTERED CUBIC (FCC) LATTICE
#
################################################################################



# Implementation
# - implementation 1
# - labels <: Any
function getUnitcellFCC(
            unitcell_type  :: Type{U},
            implementation :: Val{1}
        ) :: U where {LS,LB,S<:AbstractSite{LS,3},B<:AbstractBond{LB,3},U<:AbstractUnitcell{S,B}}

    # return a new Unitcell
    return newUnitcell(
        # Type of the unitcell
        U,
        # lattice vectors
        Vector{Float64}[
            Float64[0, 0.5, 0.5],
            Float64[0.5, 0, 0.5],
            Float64[0.5, 0.5, 0]
        ],
        # sites
        S[
            newSite(S, Float64[0,0,0], getDefaultLabelN(LS,1))
        ],
        # bonds
        B[
            newBond(B, 1,1, getDefaultLabel(LB), (+1,0,0)),
            newBond(B, 1,1, getDefaultLabel(LB), (-1,0,0)),
            newBond(B, 1,1, getDefaultLabel(LB), (0,+1,-1)),
            newBond(B, 1,1, getDefaultLabel(LB), (0,-1,+1)),
            newBond(B, 1,1, getDefaultLabel(LB), (0,+1,0)),
            newBond(B, 1,1, getDefaultLabel(LB), (0,-1,0)),
            newBond(B, 1,1, getDefaultLabel(LB), (-1,0,+1)),
            newBond(B, 1,1, getDefaultLabel(LB), (+1,0,-1)),
            newBond(B, 1,1, getDefaultLabel(LB), (0,0,+1)),
            newBond(B, 1,1, getDefaultLabel(LB), (0,0,-1)),
            newBond(B, 1,1, getDefaultLabel(LB), (-1,+1,0)),
            newBond(B, 1,1, getDefaultLabel(LB), (+1,-1,0))
        ]
    )
end



# Implementation
# - implementation 2
# - labels <: Any
function getUnitcellFCC(
            unitcell_type  :: Type{U},
            implementation :: Val{2}
        ) :: U where {LS,LB,S<:AbstractSite{LS,3},B<:AbstractBond{LB,3},U<:AbstractUnitcell{S,B}}

    # return a new Unitcell
    return newUnitcell(
        # Type of the unitcell
        U,
        # lattice vectors
        Vector{Float64}[
            Float64[0, 0.5, 0.5],
            Float64[0.5, 0, 0.5],
            Float64[0.5, 0.5, 0]
        ],
        # sites
        S[
            newSite(S, Float64[0,0,0], getDefaultLabelN(LS,1))
        ],
        # bonds
        B[
            newBond(B, 1,1, getDefaultLabelN(LB,1), (+1,0,0)),
            newBond(B, 1,1, getDefaultLabelN(LB,1), (-1,0,0)),
            newBond(B, 1,1, getDefaultLabelN(LB,1), (0,+1,-1)),
            newBond(B, 1,1, getDefaultLabelN(LB,1), (0,-1,+1)),
            newBond(B, 1,1, getDefaultLabelN(LB,1), (0,+1,0)),
            newBond(B, 1,1, getDefaultLabelN(LB,1), (0,-1,0)),
            newBond(B, 1,1, getDefaultLabelN(LB,1), (-1,0,+1)),
            newBond(B, 1,1, getDefaultLabelN(LB,1), (+1,0,-1)),
            newBond(B, 1,1, getDefaultLabelN(LB,1), (0,0,+1)),
            newBond(B, 1,1, getDefaultLabelN(LB,1), (0,0,-1)),
            newBond(B, 1,1, getDefaultLabelN(LB,1), (-1,+1,0)),
            newBond(B, 1,1, getDefaultLabelN(LB,1), (+1,-1,0)),
            newBond(B, 1,1, getDefaultLabelN(LB,2), (+1,+1,-1)),
            newBond(B, 1,1, getDefaultLabelN(LB,2), (+1,-1,+1)),
            newBond(B, 1,1, getDefaultLabelN(LB,2), (-1,+1,+1)),
            newBond(B, 1,1, getDefaultLabelN(LB,2), (-1,-1,+1)),
            newBond(B, 1,1, getDefaultLabelN(LB,2), (-1,+1,-1)),
            newBond(B, 1,1, getDefaultLabelN(LB,2), (+1,-1,-1))
        ]
    )
end




# Implementation
# - implementation 4
# - labels <: Any
function getUnitcellFCC(
            unitcell_type  :: Type{U},
            implementation :: Val{4}
        ) :: U where {LS,LB,S<:AbstractSite{LS,3},B<:AbstractBond{LB,3},U<:AbstractUnitcell{S,B}}

    # return a new Unitcell
    return newUnitcell(
        # Type of the unitcell
        U,
        # lattice vectors
        Vector{Float64}[
            Float64[0, 0.5, 0.5],
            Float64[0.5, 0, 0.5],
            Float64[0.5, 0.5, 0]
        ],
        # sites
        S[
            newSite(S, Float64[0,0,0], getDefaultLabelN(LS,1))
        ],
        # bonds
        B[
            newBond(B, 1,1, getDefaultLabelX(LB), (+1,0,0)),
            newBond(B, 1,1, getDefaultLabelX(LB), (-1,0,0)),
            newBond(B, 1,1, getDefaultLabelX(LB), (0,+1,-1)),
            newBond(B, 1,1, getDefaultLabelX(LB), (0,-1,+1)),
            newBond(B, 1,1, getDefaultLabelY(LB), (0,+1,0)),
            newBond(B, 1,1, getDefaultLabelY(LB), (0,-1,0)),
            newBond(B, 1,1, getDefaultLabelY(LB), (-1,0,+1)),
            newBond(B, 1,1, getDefaultLabelY(LB), (+1,0,-1)),
            newBond(B, 1,1, getDefaultLabelZ(LB), (0,0,+1)),
            newBond(B, 1,1, getDefaultLabelZ(LB), (0,0,-1)),
            newBond(B, 1,1, getDefaultLabelZ(LB), (-1,+1,0)),
            newBond(B, 1,1, getDefaultLabelZ(LB), (+1,-1,0))
        ]
    )
end



# Implementation
# - implementation 5
# - labels <: Any
function getUnitcellFCC(
            unitcell_type  :: Type{U},
            implementation :: Val{5}
        ) :: U where {LS,LB,S<:AbstractSite{LS,3},B<:AbstractBond{LB,3},U<:AbstractUnitcell{S,B}}

    # return a new Unitcell
    return newUnitcell(
        # Type of the unitcell
        U,
        # lattice vectors
        Vector{Float64}[
            Float64[0, 0.5, 0.5],
            Float64[0.5, 0, 0.5],
            Float64[0.5, 0.5, 0]
        ],
        # sites
        S[
            newSite(S, Float64[0,0,0], getDefaultLabelN(LS,1))
        ],
        # bonds
        B[
            newBond(B, 1,1, getDefaultLabelX(LB), (+1,0,0)),
            newBond(B, 1,1, getDefaultLabelX(LB), (-1,0,0)),
            newBond(B, 1,1, getDefaultLabelX(LB), (0,+1,-1)),
            newBond(B, 1,1, getDefaultLabelX(LB), (0,-1,+1)),
            newBond(B, 1,1, getDefaultLabelY(LB), (0,+1,0)),
            newBond(B, 1,1, getDefaultLabelY(LB), (0,-1,0)),
            newBond(B, 1,1, getDefaultLabelY(LB), (-1,0,+1)),
            newBond(B, 1,1, getDefaultLabelY(LB), (+1,0,-1)),
            newBond(B, 1,1, getDefaultLabelZ(LB), (0,0,+1)),
            newBond(B, 1,1, getDefaultLabelZ(LB), (0,0,-1)),
            newBond(B, 1,1, getDefaultLabelZ(LB), (-1,+1,0)),
            newBond(B, 1,1, getDefaultLabelZ(LB), (+1,-1,0)),
            newBond(B, 1,1, getDefaultLabelN(LB,2), (+1,+1,-1)),
            newBond(B, 1,1, getDefaultLabelN(LB,2), (+1,-1,+1)),
            newBond(B, 1,1, getDefaultLabelN(LB,2), (-1,+1,+1)),
            newBond(B, 1,1, getDefaultLabelN(LB,2), (-1,-1,+1)),
            newBond(B, 1,1, getDefaultLabelN(LB,2), (-1,+1,-1)),
            newBond(B, 1,1, getDefaultLabelN(LB,2), (+1,-1,-1))
        ]
    )
end
