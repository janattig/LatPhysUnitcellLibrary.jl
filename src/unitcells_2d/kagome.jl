################################################################################
#
#   KAGOME LATTICE
#
################################################################################



# Implementation
# - implementation 1
# - labels <: Any
function getUnitcellKagome(
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
            newSite(S, Float64[     0.0   ,  0.0 ], getDefaultLabelN(LS,1)),
            newSite(S, Float64[sqrt(3.0)/4, -0.25], getDefaultLabelN(LS,2)),
            newSite(S, Float64[sqrt(3.0)/4, +0.25], getDefaultLabelN(LS,3))
        ],
        # Bonds
        B[
            newBond(B, 1, 2, getDefaultLabel(LB), ( 0, 0)),
            newBond(B, 1, 2, getDefaultLabel(LB), (-1, 0)),
            newBond(B, 1, 3, getDefaultLabel(LB), ( 0, 0)),
            newBond(B, 1, 3, getDefaultLabel(LB), ( 0,-1)),
            newBond(B, 2, 1, getDefaultLabel(LB), ( 0, 0)),
            newBond(B, 2, 1, getDefaultLabel(LB), (+1, 0)),
            newBond(B, 2, 3, getDefaultLabel(LB), ( 0, 0)),
            newBond(B, 2, 3, getDefaultLabel(LB), (+1,-1)),
            newBond(B, 3, 1, getDefaultLabel(LB), ( 0, 0)),
            newBond(B, 3, 1, getDefaultLabel(LB), ( 0,+1)),
            newBond(B, 3, 2, getDefaultLabel(LB), ( 0, 0)),
            newBond(B, 3, 2, getDefaultLabel(LB), (-1,+1))
        ]
    )
end
