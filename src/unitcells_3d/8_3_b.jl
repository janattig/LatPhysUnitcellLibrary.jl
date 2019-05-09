################################################################################
#
#   (8,3)b
#
################################################################################


# Implementation
# - implementation 1
# - labels <: Any
function getUnitcell_8_3_b(
			unitcell_type  :: Type{U},
			implementation :: Val{1}
		) :: U where {LS,LB,S<:AbstractSite{LS,3},B<:AbstractBond{LB,3},U<:AbstractUnitcell{S,B}}

	# return a new Unitcell
	return newUnitcell(
		# Type of the unitcell
		U,
		# lattice vectors
		Vector{Float64}[
			Float64[1/2., 1/(2*sqrt(3)), sqrt(2)/(5*sqrt(3))],
			Float64[0, 1/sqrt(3), (2*sqrt(2))/(5*sqrt(3))],
			Float64[0, 0, sqrt(6)/5],
		],
		# sites
		S[
			newSite(S, Float64[1/10., 1/(2*sqrt(3)), sqrt(2)/(5*sqrt(3))], getDefaultLabelN(LS,1)),
			newSite(S, Float64[1/5., sqrt(3)/5, sqrt(6)/5], getDefaultLabelN(LS,2)),
			newSite(S, Float64[3/10., 11/(10*sqrt(3)), (4*sqrt(2))/(5*sqrt(3))], getDefaultLabelN(LS,3)),
			newSite(S, Float64[1/5., 2/(5*sqrt(3)), (2*sqrt(2))/(5*sqrt(3))], getDefaultLabelN(LS,4)),
			newSite(S, Float64[3/10., (3*sqrt(3))/10., sqrt(6)/5], getDefaultLabelN(LS,5)),
			newSite(S, Float64[2/5., 1/sqrt(3), sqrt(2)/sqrt(3)], getDefaultLabelN(LS,6)),
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
			newBond(B, 6, 1, getDefaultLabel(LB), (1, 0, 1)),
			newBond(B, 1, 6, getDefaultLabel(LB), (-1, 0, -1)),
			newBond(B, 4, 3, getDefaultLabel(LB), (0, -1, 0)),
			newBond(B, 3, 4, getDefaultLabel(LB), (0, 1, 0)),
			newBond(B, 1, 2, getDefaultLabel(LB), (0, 0, -1)),
			newBond(B, 2, 1, getDefaultLabel(LB), (0, 0, 1)),
			newBond(B, 5, 6, getDefaultLabel(LB), (0, 0, -1)),
			newBond(B, 6, 5, getDefaultLabel(LB), (0, 0, 1)),
		]
	)
end


# Implementation
# - implementation 4 (Kitaev)
# - labels <: Any
function getUnitcell_8_3_b(
			unitcell_type  :: Type{U},
			implementation :: Val{4}
		) :: U where {LS,LB,S<:AbstractSite{LS,3},B<:AbstractBond{LB,3},U<:AbstractUnitcell{S,B}}

	# return a new Unitcell
	return newUnitcell(
		# Type of the unitcell
		U,
		# lattice vectors
		Vector{Float64}[
			Float64[1/2., 1/(2*sqrt(3)), sqrt(2)/(5*sqrt(3))],
			Float64[0, 1/sqrt(3), (2*sqrt(2))/(5*sqrt(3))],
			Float64[0, 0, sqrt(6)/5],
		],
		# sites
		S[
			newSite(S, Float64[1/10., 1/(2*sqrt(3)), sqrt(2)/(5*sqrt(3))], getDefaultLabelN(LS,1)),
			newSite(S, Float64[1/5., sqrt(3)/5, sqrt(6)/5], getDefaultLabelN(LS,2)),
			newSite(S, Float64[3/10., 11/(10*sqrt(3)), (4*sqrt(2))/(5*sqrt(3))], getDefaultLabelN(LS,3)),
			newSite(S, Float64[1/5., 2/(5*sqrt(3)), (2*sqrt(2))/(5*sqrt(3))], getDefaultLabelN(LS,4)),
			newSite(S, Float64[3/10., (3*sqrt(3))/10., sqrt(6)/5], getDefaultLabelN(LS,5)),
			newSite(S, Float64[2/5., 1/sqrt(3), sqrt(2)/sqrt(3)], getDefaultLabelN(LS,6)),
		],
		# bonds
		B[
			newBond(B, 1, 4, getDefaultLabelZ(LB), (0, 0, 0)),
			newBond(B, 4, 2, getDefaultLabelY(LB), (0, 0, 0)),
			newBond(B, 2, 5, getDefaultLabelZ(LB), (0, 0, 0)),
			newBond(B, 5, 3, getDefaultLabelY(LB), (0, 0, 0)),
			newBond(B, 3, 6, getDefaultLabelZ(LB), (0, 0, 0)),
			newBond(B, 4, 1, getDefaultLabelZ(LB), (0, 0, 0)),
			newBond(B, 2, 4, getDefaultLabelY(LB), (0, 0, 0)),
			newBond(B, 5, 2, getDefaultLabelZ(LB), (0, 0, 0)),
			newBond(B, 3, 5, getDefaultLabelY(LB), (0, 0, 0)),
			newBond(B, 6, 3, getDefaultLabelZ(LB), (0, 0, 0)),
			newBond(B, 6, 1, getDefaultLabelY(LB), (1, 0, 1)),
			newBond(B, 1, 6, getDefaultLabelY(LB), (-1, 0, -1)),
			newBond(B, 4, 3, getDefaultLabelX(LB), (0, -1, 0)),
			newBond(B, 3, 4, getDefaultLabelX(LB), (0, 1, 0)),
			newBond(B, 1, 2, getDefaultLabelX(LB), (0, 0, -1)),
			newBond(B, 2, 1, getDefaultLabelX(LB), (0, 0, 1)),
			newBond(B, 5, 6, getDefaultLabelX(LB), (0, 0, -1)),
			newBond(B, 6, 5, getDefaultLabelX(LB), (0, 0, 1)),
		]
	)
end
