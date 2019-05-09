################################################################################
#
#   (8,3)c
#
################################################################################


# Implementation
# - implementation 1
# - labels <: Any
function getUnitcell_8_3_c(
			unitcell_type  :: Type{U},
			implementation :: Val{1}
		) :: U where {LS,LB,S<:AbstractSite{LS,3},B<:AbstractBond{LB,3},U<:AbstractUnitcell{S,B}}

	# return a new Unitcell
	return newUnitcell(
		# Type of the unitcell
		U,
		# lattice vectors
		Vector{Float64}[
			Float64[1., 0., 0.],
			Float64[-1/2., sqrt(3)/2., 0.],
			Float64[0., 0., 2/5.],
		],
		# sites
		S[
			newSite(S, Float64[-1/5., 4/(5*sqrt(3)), 1/10.], getDefaultLabelN(LS,1)),
			newSite(S, Float64[ 0., 7/(5*sqrt(3)), 1/10.], getDefaultLabelN(LS,2)),
			newSite(S, Float64[ 1/5., 4/(5*sqrt(3)), 1/10.], getDefaultLabelN(LS,3)),
			newSite(S, Float64[ 1/2., 1/(2*sqrt(3)), 3/10.], getDefaultLabelN(LS,4)),
			newSite(S, Float64[ 0., 1/sqrt(3), 1/10.], getDefaultLabelN(LS,5)),
			newSite(S, Float64[ 3/10., 7/(10*sqrt(3)), 3/10.], getDefaultLabelN(LS,6)),
			newSite(S, Float64[ 1/2., 1/(10*sqrt(3)), 3/10.], getDefaultLabelN(LS,7)),
			newSite(S, Float64[ 7/10., 7/(10*sqrt(3)), 3/10.], getDefaultLabelN(LS,8)),
		],
		# bonds
		B[
			newBond(B, 1, 5, getDefaultLabel(LB), (0, 0, 0)),
			newBond(B, 2, 5, getDefaultLabel(LB), (0, 0, 0)),
			newBond(B, 5, 3, getDefaultLabel(LB), (0, 0, 0)),
			newBond(B, 3, 6, getDefaultLabel(LB), (0, 0, 0)),
			newBond(B, 6, 4, getDefaultLabel(LB), (0, 0, 0)),
			newBond(B, 4, 7, getDefaultLabel(LB), (0, 0, 0)),
			newBond(B, 4, 8, getDefaultLabel(LB), (0, 0, 0)),
			newBond(B, 5, 1, getDefaultLabel(LB), (0, 0, 0)),
			newBond(B, 5, 2, getDefaultLabel(LB), (0, 0, 0)),
			newBond(B, 3, 5, getDefaultLabel(LB), (0, 0, 0)),
			newBond(B, 6, 3, getDefaultLabel(LB), (0, 0, 0)),
			newBond(B, 4, 6, getDefaultLabel(LB), (0, 0, 0)),
			newBond(B, 7, 4, getDefaultLabel(LB), (0, 0, 0)),
			newBond(B, 8, 4, getDefaultLabel(LB), (0, 0, 0)),
			newBond(B, 8, 1, getDefaultLabel(LB), (1, 0, 0)),
			newBond(B, 1, 8, getDefaultLabel(LB), (-1, 0, 0)),
			newBond(B, 8, 1, getDefaultLabel(LB), (1, 0, 1)),
			newBond(B, 1, 8, getDefaultLabel(LB), (-1, 0, -1)),
			newBond(B, 2, 7, getDefaultLabel(LB), (0, 1, 0)),
			newBond(B, 7, 2, getDefaultLabel(LB), (0, -1, 0)),
			newBond(B, 2, 7, getDefaultLabel(LB), (0, 1, -1)),
			newBond(B, 7, 2, getDefaultLabel(LB), (0, -1, 1)),
			newBond(B, 3, 6, getDefaultLabel(LB), (0, 0, -1)),
			newBond(B, 6, 3, getDefaultLabel(LB), (0, 0, 1)),
		]
	)
end


# Implementation
# - implementation 4 (Kitaev)
# - labels <: Any
function getUnitcell_8_3_c(
			unitcell_type  :: Type{U},
			implementation :: Val{4}
		) :: U where {LS,LB,S<:AbstractSite{LS,3},B<:AbstractBond{LB,3},U<:AbstractUnitcell{S,B}}

	# return a new Unitcell
	return newUnitcell(
		# Type of the unitcell
		U,
		# lattice vectors
		Vector{Float64}[
			Float64[1., 0., 0.],
			Float64[-1/2., sqrt(3)/2., 0.],
			Float64[0., 0., 2/5.],
		],
		# sites
		S[
			newSite(S, Float64[-1/5., 4/(5*sqrt(3)), 1/10.], getDefaultLabelN(LS,1)),
			newSite(S, Float64[ 0., 7/(5*sqrt(3)), 1/10.], getDefaultLabelN(LS,2)),
			newSite(S, Float64[ 1/5., 4/(5*sqrt(3)), 1/10.], getDefaultLabelN(LS,3)),
			newSite(S, Float64[ 1/2., 1/(2*sqrt(3)), 3/10.], getDefaultLabelN(LS,4)),
			newSite(S, Float64[ 0., 1/sqrt(3), 1/10.], getDefaultLabelN(LS,5)),
			newSite(S, Float64[ 3/10., 7/(10*sqrt(3)), 3/10.], getDefaultLabelN(LS,6)),
			newSite(S, Float64[ 1/2., 1/(10*sqrt(3)), 3/10.], getDefaultLabelN(LS,7)),
			newSite(S, Float64[ 7/10., 7/(10*sqrt(3)), 3/10.], getDefaultLabelN(LS,8)),
		],
		# bonds
		B[
			newBond(B, 1, 5, getDefaultLabelX(LB), (0, 0, 0)),
			newBond(B, 2, 5, getDefaultLabelZ(LB), (0, 0, 0)),
			newBond(B, 5, 3, getDefaultLabelY(LB), (0, 0, 0)),
			newBond(B, 3, 6, getDefaultLabelZ(LB), (0, 0, 0)),
			newBond(B, 6, 4, getDefaultLabelY(LB), (0, 0, 0)),
			newBond(B, 4, 7, getDefaultLabelZ(LB), (0, 0, 0)),
			newBond(B, 4, 8, getDefaultLabelX(LB), (0, 0, 0)),
			newBond(B, 5, 1, getDefaultLabelX(LB), (0, 0, 0)),
			newBond(B, 5, 2, getDefaultLabelZ(LB), (0, 0, 0)),
			newBond(B, 3, 5, getDefaultLabelY(LB), (0, 0, 0)),
			newBond(B, 6, 3, getDefaultLabelZ(LB), (0, 0, 0)),
			newBond(B, 4, 6, getDefaultLabelY(LB), (0, 0, 0)),
			newBond(B, 7, 4, getDefaultLabelZ(LB), (0, 0, 0)),
			newBond(B, 8, 4, getDefaultLabelX(LB), (0, 0, 0)),
			newBond(B, 8, 1, getDefaultLabelY(LB), (1, 0, 0)),
			newBond(B, 1, 8, getDefaultLabelY(LB), (-1, 0, 0)),
			newBond(B, 8, 1, getDefaultLabelZ(LB), (1, 0, 1)),
			newBond(B, 1, 8, getDefaultLabelZ(LB), (-1, 0, -1)),
			newBond(B, 2, 7, getDefaultLabelX(LB), (0, 1, 0)),
			newBond(B, 7, 2, getDefaultLabelX(LB), (0, -1, 0)),
			newBond(B, 2, 7, getDefaultLabelY(LB), (0, 1, -1)),
			newBond(B, 7, 2, getDefaultLabelY(LB), (0, -1, 1)),
			newBond(B, 3, 6, getDefaultLabelX(LB), (0, 0, -1)),
			newBond(B, 6, 3, getDefaultLabelX(LB), (0, 0, 1)),
		]
	)
end
