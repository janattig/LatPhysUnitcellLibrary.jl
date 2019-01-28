################################################################################
#
#   PYROCHLORE LATTICE
#
################################################################################



# Implementation
# - implementation 1
# - labels <: Any
function getUnitcellPyrochlore(
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
            newSite(S, Float64[0., 0., 0.], getDefaultLabelN(LS,1)),
            newSite(S, Float64[0., 0.25, 0.25], getDefaultLabelN(LS,2)),
            newSite(S, Float64[0.25, 0., 0.25], getDefaultLabelN(LS,3)),
            newSite(S, Float64[0.25, 0.25, 0.], getDefaultLabelN(LS,4))
        ],
        # bonds
        B[
            newBond(B, 1,2, getDefaultLabel(LB), (0,0,0)),
            newBond(B, 1,3, getDefaultLabel(LB), (0,0,0)),
            newBond(B, 1,4, getDefaultLabel(LB), (0,0,0)),
            newBond(B, 2,1, getDefaultLabel(LB), (0,0,0)),
            newBond(B, 2,3, getDefaultLabel(LB), (0,0,0)),
            newBond(B, 2,4, getDefaultLabel(LB), (0,0,0)),
            newBond(B, 3,1, getDefaultLabel(LB), (0,0,0)),
            newBond(B, 3,2, getDefaultLabel(LB), (0,0,0)),
            newBond(B, 3,4, getDefaultLabel(LB), (0,0,0)),
            newBond(B, 4,1, getDefaultLabel(LB), (0,0,0)),
            newBond(B, 4,2, getDefaultLabel(LB), (0,0,0)),
            newBond(B, 4,3, getDefaultLabel(LB), (0,0,0)),

            newBond(B, 1,4, getDefaultLabel(LB), (0,0,-1)),
            newBond(B, 4,1, getDefaultLabel(LB), (0,0,+1)),
            newBond(B, 1,2, getDefaultLabel(LB), (-1,0,0)),
            newBond(B, 2,1, getDefaultLabel(LB), (+1,0,0)),
            newBond(B, 1,3, getDefaultLabel(LB), (0,-1,0)),
            newBond(B, 3,1, getDefaultLabel(LB), (0,+1,0)),

            newBond(B, 2,3, getDefaultLabel(LB), (+1,-1,0)),
            newBond(B, 3,2, getDefaultLabel(LB), (-1,+1,0)),
            newBond(B, 2,4, getDefaultLabel(LB), (+1,0,-1)),
            newBond(B, 4,2, getDefaultLabel(LB), (-1,0,+1)),
            newBond(B, 3,4, getDefaultLabel(LB), (0,+1,-1)),
            newBond(B, 4,3, getDefaultLabel(LB), (0,-1,+1))
        ]
    )
end



# Implementation
# - implementation 2
# - labels <: Any
function getUnitcellPyrochlore(
            unitcell_type  :: Type{U},
            implementation :: Val{2}
        ) :: U where {LS,LB,S<:AbstractSite{LS,3},B<:AbstractBond{LB,3},U<:AbstractUnitcell{S,B}}

    # return a new Unitcell
    return newUnitcell(
        # Type of the unitcell
        U,
        # lattice vectors
        Vector{Float64}[
            Float64[1., 0, 0],
            Float64[0, 1., 0],
            Float64[0, 0, 1.]
        ],
        # sites
        S[
            newSite(S, Float64[0.25, 0, 0], getDefaultLabelN(LS,1)),
            newSite(S, Float64[0, 0.25, 0], getDefaultLabelN(LS,2)),
            newSite(S, Float64[0, 0, 0.25], getDefaultLabelN(LS,3)),
            newSite(S, Float64[0.25, 0.25, 0.25], getDefaultLabelN(LS,4)),

            newSite(S, Float64[0.75, 0.5, 0], getDefaultLabelN(LS,5)),
            newSite(S, Float64[0.5, 0.75, 0], getDefaultLabelN(LS,6)),
            newSite(S, Float64[0.5, 0.5, 0.25], getDefaultLabelN(LS,7)),
            newSite(S, Float64[0.75, 0.75, 0.25], getDefaultLabelN(LS,8)),

            newSite(S, Float64[0.75, 0, 0.5], getDefaultLabelN(LS,9)),
            newSite(S, Float64[0.5, 0.25, 0.5], getDefaultLabelN(LS,10)),
            newSite(S, Float64[0.5, 0, 0.75], getDefaultLabelN(LS,11)),
            newSite(S, Float64[0.75, 0.25, 0.75], getDefaultLabelN(LS,12)),

            newSite(S, Float64[0.25, 0.5, 0.5], getDefaultLabelN(LS,13)),
            newSite(S, Float64[0, 0.75, 0.5], getDefaultLabelN(LS,14)),
            newSite(S, Float64[0, 0.5, 0.75], getDefaultLabelN(LS,15)),
            newSite(S, Float64[0.25, 0.75, 0.75], getDefaultLabelN(LS,16))
        ],
        # bonds
        B[
            newBond(B, 1,2, getDefaultLabel(LB), (0,0,0)),
            newBond(B, 1,3, getDefaultLabel(LB), (0,0,0)),
            newBond(B, 1,4, getDefaultLabel(LB), (0,0,0)),
            newBond(B, 2,1, getDefaultLabel(LB), (0,0,0)),
            newBond(B, 2,3, getDefaultLabel(LB), (0,0,0)),
            newBond(B, 2,4, getDefaultLabel(LB), (0,0,0)),
            newBond(B, 3,1, getDefaultLabel(LB), (0,0,0)),
            newBond(B, 3,2, getDefaultLabel(LB), (0,0,0)),
            newBond(B, 3,4, getDefaultLabel(LB), (0,0,0)),
            newBond(B, 4,1, getDefaultLabel(LB), (0,0,0)),
            newBond(B, 4,2, getDefaultLabel(LB), (0,0,0)),
            newBond(B, 4,3, getDefaultLabel(LB), (0,0,0)),

            newBond(B, 5,6, getDefaultLabel(LB), (0,0,0)),
            newBond(B, 5,7, getDefaultLabel(LB), (0,0,0)),
            newBond(B, 5,8, getDefaultLabel(LB), (0,0,0)),
            newBond(B, 6,5, getDefaultLabel(LB), (0,0,0)),
            newBond(B, 6,7, getDefaultLabel(LB), (0,0,0)),
            newBond(B, 6,8, getDefaultLabel(LB), (0,0,0)),
            newBond(B, 7,5, getDefaultLabel(LB), (0,0,0)),
            newBond(B, 7,6, getDefaultLabel(LB), (0,0,0)),
            newBond(B, 7,8, getDefaultLabel(LB), (0,0,0)),
            newBond(B, 8,5, getDefaultLabel(LB), (0,0,0)),
            newBond(B, 8,6, getDefaultLabel(LB), (0,0,0)),
            newBond(B, 8,7, getDefaultLabel(LB), (0,0,0)),

            newBond(B, 9,10, getDefaultLabel(LB), (0,0,0)),
            newBond(B, 9,11, getDefaultLabel(LB), (0,0,0)),
            newBond(B, 9,12, getDefaultLabel(LB), (0,0,0)),
            newBond(B, 10,9, getDefaultLabel(LB), (0,0,0)),
            newBond(B, 10,11, getDefaultLabel(LB), (0,0,0)),
            newBond(B, 10,12, getDefaultLabel(LB), (0,0,0)),
            newBond(B, 11,9, getDefaultLabel(LB), (0,0,0)),
            newBond(B, 11,10, getDefaultLabel(LB), (0,0,0)),
            newBond(B, 11,12, getDefaultLabel(LB), (0,0,0)),
            newBond(B, 12,9, getDefaultLabel(LB), (0,0,0)),
            newBond(B, 12,10, getDefaultLabel(LB), (0,0,0)),
            newBond(B, 12,11, getDefaultLabel(LB), (0,0,0)),

            newBond(B, 13,14, getDefaultLabel(LB), (0,0,0)),
            newBond(B, 13,15, getDefaultLabel(LB), (0,0,0)),
            newBond(B, 13,16, getDefaultLabel(LB), (0,0,0)),
            newBond(B, 14,13, getDefaultLabel(LB), (0,0,0)),
            newBond(B, 14,15, getDefaultLabel(LB), (0,0,0)),
            newBond(B, 14,16, getDefaultLabel(LB), (0,0,0)),
            newBond(B, 15,13, getDefaultLabel(LB), (0,0,0)),
            newBond(B, 15,14, getDefaultLabel(LB), (0,0,0)),
            newBond(B, 15,16, getDefaultLabel(LB), (0,0,0)),
            newBond(B, 16,13, getDefaultLabel(LB), (0,0,0)),
            newBond(B, 16,14, getDefaultLabel(LB), (0,0,0)),
            newBond(B, 16,15, getDefaultLabel(LB), (0,0,0)),

            newBond(B, 4,7, getDefaultLabel(LB), (0,0,0)),
            newBond(B, 4,10, getDefaultLabel(LB), (0,0,0)),
            newBond(B, 4,13, getDefaultLabel(LB), (0,0,0)),
            newBond(B, 7,4, getDefaultLabel(LB), (0,0,0)),
            newBond(B, 7,10, getDefaultLabel(LB), (0,0,0)),
            newBond(B, 7,13, getDefaultLabel(LB), (0,0,0)),
            newBond(B, 10,4, getDefaultLabel(LB), (0,0,0)),
            newBond(B, 10,7, getDefaultLabel(LB), (0,0,0)),
            newBond(B, 10,13, getDefaultLabel(LB), (0,0,0)),
            newBond(B, 13,4, getDefaultLabel(LB), (0,0,0)),
            newBond(B, 13,7, getDefaultLabel(LB), (0,0,0)),
            newBond(B, 13,10, getDefaultLabel(LB), (0,0,0)),

            newBond(B, 8,3, getDefaultLabel(LB), (1,1,0)),
            newBond(B, 3,8, getDefaultLabel(LB), (-1,-1,0)),
            newBond(B, 8,14, getDefaultLabel(LB), (1,0,0)),
            newBond(B, 14,8, getDefaultLabel(LB), (-1,0,0)),
            newBond(B, 14,3, getDefaultLabel(LB), (0,1,0)),
            newBond(B, 3,14, getDefaultLabel(LB), (0,-1,0)),
            newBond(B, 8,9, getDefaultLabel(LB), (0,1,0)),
            newBond(B, 9,8, getDefaultLabel(LB), (0,-1,0)),
            newBond(B, 14,9, getDefaultLabel(LB), (-1,1,0)),
            newBond(B, 9,14, getDefaultLabel(LB), (1,-1,0)),
            newBond(B, 3,9, getDefaultLabel(LB), (-1,0,0)),
            newBond(B, 9,3, getDefaultLabel(LB), (1,0,0)),

            newBond(B, 12,15, getDefaultLabel(LB), (1,0,0)),
            newBond(B, 15,12, getDefaultLabel(LB), (-1,0,0)),
            newBond(B, 12,2, getDefaultLabel(LB), (1,0,1)),
            newBond(B, 2,12, getDefaultLabel(LB), (-1,0,-1)),
            newBond(B, 15,2, getDefaultLabel(LB), (0,0,1)),
            newBond(B, 2,15, getDefaultLabel(LB), (0,0,-1)),
            newBond(B, 12,5, getDefaultLabel(LB), (0,0,1)),
            newBond(B, 5,12, getDefaultLabel(LB), (0,0,-1)),
            newBond(B, 2,5, getDefaultLabel(LB), (-1,0,0)),
            newBond(B, 5,2, getDefaultLabel(LB), (1,0,0)),
            newBond(B, 15,5, getDefaultLabel(LB), (-1,0,1)),
            newBond(B, 5,15, getDefaultLabel(LB), (1,0,-1)),

            newBond(B, 16,11, getDefaultLabel(LB), (0,1,0)),
            newBond(B, 11,16, getDefaultLabel(LB), (0,-1,0)),
            newBond(B, 6,11, getDefaultLabel(LB), (0,1,-1)),
            newBond(B, 11,6, getDefaultLabel(LB), (0,-1,1)),
            newBond(B, 16,6, getDefaultLabel(LB), (0,0,1)),
            newBond(B, 6,16, getDefaultLabel(LB), (0,0,-1)),
            newBond(B, 16,1, getDefaultLabel(LB), (0,1,1)),
            newBond(B, 1,16, getDefaultLabel(LB), (0,-1,-1)),
            newBond(B, 1,6, getDefaultLabel(LB), (0,-1,0)),
            newBond(B, 6,1, getDefaultLabel(LB), (0,1,0)),
            newBond(B, 1,11, getDefaultLabel(LB), (0,0,-1)),
            newBond(B, 11,1, getDefaultLabel(LB), (0,0,1))
        ]
    )
end
