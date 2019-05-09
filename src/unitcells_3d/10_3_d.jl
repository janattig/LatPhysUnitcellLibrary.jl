################################################################################
#
#   (10,3)d
#
################################################################################


# Implementation
# - implementation 1
# - labels <: Any
function getUnitcell_10_3_d(
			unitcell_type  :: Type{U},
			implementation :: Val{1}
		) :: U where {LS,LB,S<:AbstractSite{LS,3},B<:AbstractBond{LB,3},U<:AbstractUnitcell{S,B}}

	# define some constants
	a = 0.25*(2 - sqrt(2))
	c = 0.5
	# return a new Unitcell
	return newUnitcell(
		# Type of the unitcell
		U,
		# lattice vectors
		Vector{Float64}[
			Float64[0.5, -0.5,  0.0],
			Float64[0.5,  0.5,  0.0],
			Float64[0.0,  0.0,  0.5],
		],
		# sites
		S[
			newSite(S, Float64[0.0,     -a, 0.75*c], getDefaultLabelN(LS,1)),
			newSite(S, Float64[ -a,    0.0,  0.5*c], getDefaultLabelN(LS,2)),
			newSite(S, Float64[0.0,      a, 0.25*c], getDefaultLabelN(LS,3)),
			newSite(S, Float64[  a,    0.0,    0.0], getDefaultLabelN(LS,4)),
			newSite(S, Float64[ -a,   -0.5, 0.25*c], getDefaultLabelN(LS,5)),
			newSite(S, Float64[0.0,  a-0.5,  0.5*c], getDefaultLabelN(LS,6)),
			newSite(S, Float64[  a,   -0.5, 0.75*c], getDefaultLabelN(LS,7)),
			newSite(S, Float64[0.0, -a-0.5,    0.0], getDefaultLabelN(LS,8)),
		],
		# bonds
		B[
			newBond(B, 1, 2, getDefaultLabel(LB), (0, 0, 0)),
			newBond(B, 3, 4, getDefaultLabel(LB), (0, 0, 0)),
			newBond(B, 5, 6, getDefaultLabel(LB), (0, 0, 0)),
			newBond(B, 2, 1, getDefaultLabel(LB), (0, 0, 0)),
			newBond(B, 4, 3, getDefaultLabel(LB), (0, 0, 0)),
			newBond(B, 6, 5, getDefaultLabel(LB), (0, 0, 0)),
			newBond(B, 2, 3, getDefaultLabel(LB), (0, 0, 0)),
			newBond(B, 3, 2, getDefaultLabel(LB), (0, 0, 0)),
			newBond(B, 6, 7, getDefaultLabel(LB), (0, 0, 0)),
			newBond(B, 7, 6, getDefaultLabel(LB), (0, 0, 0)),
			newBond(B, 1, 6, getDefaultLabel(LB), (0, 0, 0)),
			newBond(B, 6, 1, getDefaultLabel(LB), (0, 0, 0)),
			newBond(B, 4, 5, getDefaultLabel(LB), (0, 1, 0)),
			newBond(B, 5, 4, getDefaultLabel(LB), (0, -1, 0)),
			newBond(B, 8, 5, getDefaultLabel(LB), (0, 0, 0)),
			newBond(B, 5, 8, getDefaultLabel(LB), (0, 0, 0)),
			newBond(B, 8, 7, getDefaultLabel(LB), (0, 0, -1)),
			newBond(B, 7, 8, getDefaultLabel(LB), (0, 0, 1)),
			newBond(B, 2, 7, getDefaultLabel(LB), (-1, 0, 0)),
			newBond(B, 7, 2, getDefaultLabel(LB), (1, 0, 0)),
			newBond(B, 3, 8, getDefaultLabel(LB), (-1, 1, 0)),
			newBond(B, 8, 3, getDefaultLabel(LB), (1, -1, 0)),
			newBond(B, 1, 4, getDefaultLabel(LB), (0, 0, 1)),
			newBond(B, 4, 1, getDefaultLabel(LB), (0, 0, -1)),
		]
	)
end


# Implementation
# - implementation 4 (Kitaev)
# - labels <: Any
function getUnitcell_10_3_d(
			unitcell_type  :: Type{U},
			implementation :: Val{4}
		) :: U where {LS,LB,S<:AbstractSite{LS,3},B<:AbstractBond{LB,3},U<:AbstractUnitcell{S,B}}

	# define some constants
	a = 0.25*(2 - sqrt(2))
	c = 0.5
	# return a new Unitcell
	return newUnitcell(
		# Type of the unitcell
		U,
		# lattice vectors
		Vector{Float64}[
			Float64[0.5, -0.5,  0.0],
			Float64[0.5,  0.5,  0.0],
			Float64[0.0,  0.0,  0.5],
		],
		# sites
		S[
			newSite(S, Float64[0.0,     -a, 0.75*c], getDefaultLabelN(LS,1)),
			newSite(S, Float64[ -a,    0.0,  0.5*c], getDefaultLabelN(LS,2)),
			newSite(S, Float64[0.0,      a, 0.25*c], getDefaultLabelN(LS,3)),
			newSite(S, Float64[  a,    0.0,    0.0], getDefaultLabelN(LS,4)),
			newSite(S, Float64[ -a,   -0.5, 0.25*c], getDefaultLabelN(LS,5)),
			newSite(S, Float64[0.0,  a-0.5,  0.5*c], getDefaultLabelN(LS,6)),
			newSite(S, Float64[  a,   -0.5, 0.75*c], getDefaultLabelN(LS,7)),
			newSite(S, Float64[0.0, -a-0.5,    0.0], getDefaultLabelN(LS,8)),
		],
		# bonds
		B[
			newBond(B, 1, 2, getDefaultLabelX(LB), (0, 0, 0)),
			newBond(B, 3, 4, getDefaultLabelX(LB), (0, 0, 0)),
			newBond(B, 5, 6, getDefaultLabelY(LB), (0, 0, 0)),
			newBond(B, 2, 1, getDefaultLabelX(LB), (0, 0, 0)),
			newBond(B, 4, 3, getDefaultLabelX(LB), (0, 0, 0)),
			newBond(B, 6, 5, getDefaultLabelY(LB), (0, 0, 0)),
			newBond(B, 2, 3, getDefaultLabelY(LB), (0, 0, 0)),
			newBond(B, 3, 2, getDefaultLabelY(LB), (0, 0, 0)),
			newBond(B, 6, 7, getDefaultLabelX(LB), (0, 0, 0)),
			newBond(B, 7, 6, getDefaultLabelX(LB), (0, 0, 0)),
			newBond(B, 1, 6, getDefaultLabelZ(LB), (0, 0, 0)),
			newBond(B, 6, 1, getDefaultLabelZ(LB), (0, 0, 0)),
			newBond(B, 4, 5, getDefaultLabelZ(LB), (0, 1, 0)),
			newBond(B, 5, 4, getDefaultLabelZ(LB), (0, -1, 0)),
			newBond(B, 8, 5, getDefaultLabelX(LB), (0, 0, 0)),
			newBond(B, 5, 8, getDefaultLabelX(LB), (0, 0, 0)),
			newBond(B, 8, 7, getDefaultLabelY(LB), (0, 0, -1)),
			newBond(B, 7, 8, getDefaultLabelY(LB), (0, 0, 1)),
			newBond(B, 2, 7, getDefaultLabelZ(LB), (-1, 0, 0)),
			newBond(B, 7, 2, getDefaultLabelZ(LB), (1, 0, 0)),
			newBond(B, 3, 8, getDefaultLabelZ(LB), (-1, 1, 0)),
			newBond(B, 8, 3, getDefaultLabelZ(LB), (1, -1, 0)),
			newBond(B, 1, 4, getDefaultLabelY(LB), (0, 0, 1)),
			newBond(B, 4, 1, getDefaultLabelY(LB), (0, 0, -1)),
		]
	)
end
