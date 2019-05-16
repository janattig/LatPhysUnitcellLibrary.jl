################################################################################
#
#   HYPERKAGOME LATTICE
#
################################################################################


# Implementation
# - implementation 1 (only NN)
# - labels <: Any
function getUnitcellHyperkagome(
			unitcell_type  :: Type{U},
			implementation :: Val{1}
		) :: U where {LS,LB,S<:AbstractSite{LS,3},B<:AbstractBond{LB,3},U<:AbstractUnitcell{S,B}}

	# return a new Unitcell
	return newUnitcell(
		# Type of the unitcell
		U,
		# lattice vectors
		Vector{Float64}[
			Float64[2*sqrt(2), 0, 0],
			Float64[0, 2*sqrt(2), 0],
			Float64[0, 0, 2*sqrt(2)]
		],
		# sites
		S[
            newSite(S, Float64[7/2/sqrt(2), 1/2/sqrt(2), 1/2/sqrt(2)], getDefaultLabelN(LS,1)),
            newSite(S, Float64[5/2/sqrt(2), 3/2/sqrt(2), 1/2/sqrt(2)], getDefaultLabelN(LS,2)),
            newSite(S, Float64[7/2/sqrt(2), 3/2/sqrt(2), 3/2/sqrt(2)], getDefaultLabelN(LS,3)),
            newSite(S, Float64[7/2/sqrt(2), 5/2/sqrt(2), 5/2/sqrt(2)], getDefaultLabelN(LS,4)),
            newSite(S, Float64[5/2/sqrt(2), 5/2/sqrt(2), 7/2/sqrt(2)], getDefaultLabelN(LS,5)),
            newSite(S, Float64[3/2/sqrt(2), 3/2/sqrt(2), 7/2/sqrt(2)], getDefaultLabelN(LS,6)),
            newSite(S, Float64[3/2/sqrt(2), 1/2/sqrt(2), 5/2/sqrt(2)], getDefaultLabelN(LS,7)),
            newSite(S, Float64[1/2/sqrt(2), 1/2/sqrt(2), 7/2/sqrt(2)], getDefaultLabelN(LS,8)),
            newSite(S, Float64[5/2/sqrt(2), 7/2/sqrt(2), 5/2/sqrt(2)], getDefaultLabelN(LS,9)),
            newSite(S, Float64[3/2/sqrt(2), 7/2/sqrt(2), 3/2/sqrt(2)], getDefaultLabelN(LS,10)),
            newSite(S, Float64[1/2/sqrt(2), 7/2/sqrt(2), 1/2/sqrt(2)], getDefaultLabelN(LS,11)),
            newSite(S, Float64[1/2/sqrt(2), 5/2/sqrt(2), 3/2/sqrt(2)], getDefaultLabelN(LS,12)),
		],
		# bonds
		B[
            newBond(B, 1, 2, getDefaultLabel(LB), (0, 0, 0)),
            newBond(B, 2, 3, getDefaultLabel(LB), (0, 0, 0)),
            newBond(B, 1, 3, getDefaultLabel(LB), (0, 0, 0)),
            newBond(B, 3, 4, getDefaultLabel(LB), (0, 0, 0)),
            newBond(B, 4, 5, getDefaultLabel(LB), (0, 0, 0)),
            newBond(B, 4, 9, getDefaultLabel(LB), (0, 0, 0)),
            newBond(B, 5, 9, getDefaultLabel(LB), (0, 0, 0)),
            newBond(B, 5, 6, getDefaultLabel(LB), (0, 0, 0)),
            newBond(B, 6, 7, getDefaultLabel(LB), (0, 0, 0)),
            newBond(B, 6, 8, getDefaultLabel(LB), (0, 0, 0)),
            newBond(B, 7, 8, getDefaultLabel(LB), (0, 0, 0)),
            newBond(B, 7, 9, getDefaultLabel(LB), (0, -1, 0)),
            newBond(B, 7, 10, getDefaultLabel(LB), (0, -1, 0)),
            newBond(B, 9, 10, getDefaultLabel(LB), (0, 0, 0)),
            newBond(B, 10, 11, getDefaultLabel(LB), (0, 0, 0)),
            newBond(B, 10, 12, getDefaultLabel(LB), (0, 0, 0)),
            newBond(B, 11, 12, getDefaultLabel(LB), (0, 0, 0)),
            newBond(B, 1, 8, getDefaultLabel(LB), (1, 0, -1)),
            newBond(B, 1, 11, getDefaultLabel(LB), (1, -1, 0)),
            newBond(B, 3, 12, getDefaultLabel(LB), (1, 0, 0)),
            newBond(B, 4, 12, getDefaultLabel(LB), (1, 0, 0)),
            newBond(B, 5, 2, getDefaultLabel(LB), (0, 0, 1)),
            newBond(B, 6, 2, getDefaultLabel(LB), (0, 0, 1)),
            newBond(B, 8, 11, getDefaultLabel(LB), (0, -1, 1)),

            newBond(B, 2, 1, getDefaultLabel(LB), (0, 0, 0)),
            newBond(B, 3, 2, getDefaultLabel(LB), (0, 0, 0)),
            newBond(B, 3, 1, getDefaultLabel(LB), (0, 0, 0)),
            newBond(B, 4, 3, getDefaultLabel(LB), (0, 0, 0)),
            newBond(B, 5, 4, getDefaultLabel(LB), (0, 0, 0)),
            newBond(B, 9, 4, getDefaultLabel(LB), (0, 0, 0)),
            newBond(B, 9, 5, getDefaultLabel(LB), (0, 0, 0)),
            newBond(B, 6, 5, getDefaultLabel(LB), (0, 0, 0)),
            newBond(B, 7, 6, getDefaultLabel(LB), (0, 0, 0)),
            newBond(B, 8, 6, getDefaultLabel(LB), (0, 0, 0)),
            newBond(B, 8, 7, getDefaultLabel(LB), (0, 0, 0)),
            newBond(B, 9, 7, getDefaultLabel(LB), (0, 1, 0)),
            newBond(B, 10, 7, getDefaultLabel(LB), (0, 1, 0)),
            newBond(B, 10, 9, getDefaultLabel(LB), (0, 0, 0)),
            newBond(B, 11, 10, getDefaultLabel(LB), (0, 0, 0)),
            newBond(B, 12, 10, getDefaultLabel(LB), (0, 0, 0)),
            newBond(B, 12, 11, getDefaultLabel(LB), (0, 0, 0)),
            newBond(B, 8, 1, getDefaultLabel(LB), (-1, 0, 1)),
            newBond(B, 11, 1, getDefaultLabel(LB), (-1, 1, 0)),
            newBond(B, 12, 3, getDefaultLabel(LB), (-1, 0, 0)),
            newBond(B, 12, 4, getDefaultLabel(LB), (-1, 0, 0)),
            newBond(B, 2, 5, getDefaultLabel(LB), (0, 0, -1)),
            newBond(B, 2, 6, getDefaultLabel(LB), (0, 0, -1)),
            newBond(B, 11, 8, getDefaultLabel(LB), (0, 1, -1)),
		]
	)
end
