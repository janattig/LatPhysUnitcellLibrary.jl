################################################################################
#
#   (10,3)c
#
################################################################################


# Implementation
# - implementation 1
# - labels <: Any
function getUnitcell_10_3_c(
			unitcell_type  :: Type{U},
			implementation :: Val{1}
		) :: U where {LS,LB,S<:AbstractSite{LS,3},B<:AbstractBond{LB,3},U<:AbstractUnitcell{S,B}}

	# return a new Unitcell
	return newUnitcell(
		# Type of the unitcell
		U,
		# lattice vectors
		Vector{Float64}[
			Float64[1, 0, 0],
			Float64[-0.5, sqrt(3)/2., 0.0],
			Float64[0.0, 0.0, (3*sqrt(3))/2.],
		],
		# sites
		S[
			newSite(S, Float64[0.25, 1/(4*sqrt(3)), 1/(2*sqrt(3))], getDefaultLabelN(LS,1)),
			newSite(S, Float64[0.75, 1/(4*sqrt(3)), 2/sqrt(3)], getDefaultLabelN(LS,2)),
			newSite(S, Float64[0.5, 1/sqrt(3), 7/(2*sqrt(3))], getDefaultLabelN(LS,3)),
			newSite(S, Float64[0.75, 1/(4*sqrt(3)), 1/sqrt(3)], getDefaultLabelN(LS,4)),
			newSite(S, Float64[0.5, 1/sqrt(3), 5/(2*sqrt(3))], getDefaultLabelN(LS,5)),
			newSite(S, Float64[0.25, 1/(4*sqrt(3)), 4/sqrt(3)], getDefaultLabelN(LS,6)),
		],
		# bonds
		B[
			newBond(B, 1, 4, getDefaultLabel(LB), (0, 0, 0)),
			newBond(B, 4, 2, getDefaultLabel(LB), (0, 0, 0)),
			newBond(B, 2, 5, getDefaultLabel(LB), (0, 0, 0)),
			newBond(B, 5, 3, getDefaultLabel(LB), (0, 0, 0)),
			newBond(B, 3, 6, getDefaultLabel(LB), (0, 0, 0)),
			newBond(B, 4, 1, getDefaultLabel(LB), (0, 0, 0)),
			newBond(B, 2, 4, getDefaultLabel(LB), (0, 0, 0)),
			newBond(B, 5, 2, getDefaultLabel(LB), (0, 0, 0)),
			newBond(B, 3, 5, getDefaultLabel(LB), (0, 0, 0)),
			newBond(B, 6, 3, getDefaultLabel(LB), (0, 0, 0)),
			newBond(B, 4, 1, getDefaultLabel(LB), (1, 0, 0)),
			newBond(B, 1, 4, getDefaultLabel(LB), (-1, 0, 0)),
			newBond(B, 5, 2, getDefaultLabel(LB), (0, 1, 0)),
			newBond(B, 2, 5, getDefaultLabel(LB), (0, -1, 0)),
			newBond(B, 3, 6, getDefaultLabel(LB), (1, 1, 0)),
			newBond(B, 6, 3, getDefaultLabel(LB), (-1, -1, 0)),
			newBond(B, 1, 6, getDefaultLabel(LB), (0, 0, -1)),
			newBond(B, 6, 1, getDefaultLabel(LB), (0, 0, 1)),
		]
	)
end


# Implementation
# - implementation 4 (Kitaev)
# - labels <: Any
function getUnitcell_10_3_c(
			unitcell_type  :: Type{U},
			implementation :: Val{4}
		) :: U where {LS,LB,S<:AbstractSite{LS,3},B<:AbstractBond{LB,3},U<:AbstractUnitcell{S,B}}

	# return a new Unitcell
	return newUnitcell(
		# Type of the unitcell
		U,
		# lattice vectors
		Vector{Float64}[
			Float64[1, 0, 0],
			Float64[-0.5, sqrt(3)/2., 0.0],
			Float64[0.0, 0.0, (3*sqrt(3))/2.],
		],
		# sites
		S[
			newSite(S, Float64[0.25, 1/(4*sqrt(3)), 1/(2*sqrt(3))], getDefaultLabelN(LS,1)),
			newSite(S, Float64[0.75, 1/(4*sqrt(3)), 2/sqrt(3)], getDefaultLabelN(LS,2)),
			newSite(S, Float64[0.5, 1/sqrt(3), 7/(2*sqrt(3))], getDefaultLabelN(LS,3)),
			newSite(S, Float64[0.75, 1/(4*sqrt(3)), 1/sqrt(3)], getDefaultLabelN(LS,4)),
			newSite(S, Float64[0.5, 1/sqrt(3), 5/(2*sqrt(3))], getDefaultLabelN(LS,5)),
			newSite(S, Float64[0.25, 1/(4*sqrt(3)), 4/sqrt(3)], getDefaultLabelN(LS,6)),
		],
		# bonds
		B[
			newBond(B, 1, 4, getDefaultLabelX(LB), (0, 0, 0)),
			newBond(B, 4, 2, getDefaultLabelZ(LB), (0, 0, 0)),
			newBond(B, 2, 5, getDefaultLabelX(LB), (0, 0, 0)),
			newBond(B, 5, 3, getDefaultLabelZ(LB), (0, 0, 0)),
			newBond(B, 3, 6, getDefaultLabelX(LB), (0, 0, 0)),
			newBond(B, 4, 1, getDefaultLabelX(LB), (0, 0, 0)),
			newBond(B, 2, 4, getDefaultLabelZ(LB), (0, 0, 0)),
			newBond(B, 5, 2, getDefaultLabelX(LB), (0, 0, 0)),
			newBond(B, 3, 5, getDefaultLabelZ(LB), (0, 0, 0)),
			newBond(B, 6, 3, getDefaultLabelX(LB), (0, 0, 0)),
			newBond(B, 4, 1, getDefaultLabelY(LB), (1, 0, 0)),
			newBond(B, 1, 4, getDefaultLabelY(LB), (-1, 0, 0)),
			newBond(B, 5, 2, getDefaultLabelY(LB), (0, 1, 0)),
			newBond(B, 2, 5, getDefaultLabelY(LB), (0, -1, 0)),
			newBond(B, 3, 6, getDefaultLabelY(LB), (1, 1, 0)),
			newBond(B, 6, 3, getDefaultLabelY(LB), (-1, -1, 0)),
			newBond(B, 1, 6, getDefaultLabelZ(LB), (0, 0, -1)),
			newBond(B, 6, 1, getDefaultLabelZ(LB), (0, 0, 1)),
		]
	)
end
