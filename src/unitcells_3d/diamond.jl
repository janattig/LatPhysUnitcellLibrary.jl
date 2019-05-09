################################################################################
#
#   DIAMOND LATTICE
#
################################################################################


# Implementation
# - implementation 1 (only NN)
# - labels <: Any
function getUnitcellDiamond(
			unitcell_type  :: Type{U},
			implementation :: Val{1}
		) :: U where {LS,LB,S<:AbstractSite{LS,3},B<:AbstractBond{LB,3},U<:AbstractUnitcell{S,B}}

	# return a new Unitcell
	return newUnitcell(
		# Type of the unitcell
		U,
		# lattice vectors
		Vector{Float64}[
			Float64[0, 1, 1] .* 0.5,
			Float64[1, 0, 1] .* 0.5,
			Float64[1, 1, 0] .* 0.5,
		],
		# sites
		S[
			newSite(S, Float64[0.0, 0.0, 0.0], getDefaultLabelN(LS,1)),
			newSite(S, Float64[0.25, 0.25, 0.25], getDefaultLabelN(LS,2)),
		],
		# bonds
		B[
			newBond(B, 1, 2, getDefaultLabel(LB), (0, 0, 0)),
			newBond(B, 1, 2, getDefaultLabel(LB), (-1, 0, 0)),
			newBond(B, 1, 2, getDefaultLabel(LB), (0, -1, 0)),
			newBond(B, 1, 2, getDefaultLabel(LB), (0, 0, -1)),
			newBond(B, 2, 1, getDefaultLabel(LB), (0, 0, 0)),
			newBond(B, 2, 1, getDefaultLabel(LB), (1, 0, 0)),
			newBond(B, 2, 1, getDefaultLabel(LB), (0, 1, 0)),
			newBond(B, 2, 1, getDefaultLabel(LB), (0, 0, 1)),
		]
	)
end


# Implementation
# - implementation 2 (including NNN)
# - labels <: Any
function getUnitcellDiamond(
			unitcell_type  :: Type{U},
			implementation :: Val{2}
		) :: U where {LS,LB,S<:AbstractSite{LS,3},B<:AbstractBond{LB,3},U<:AbstractUnitcell{S,B}}

	# return a new Unitcell
	return newUnitcell(
		# Type of the unitcell
		U,
		# lattice vectors
		Vector{Float64}[
			Float64[0, 1, 1] .* 0.5,
			Float64[1, 0, 1] .* 0.5,
			Float64[1, 1, 0] .* 0.5,
		],
		# sites
		S[
			newSite(S, Float64[0.0, 0.0, 0.0], getDefaultLabelN(LS,1)),
			newSite(S, Float64[0.25, 0.25, 0.25], getDefaultLabelN(LS,2)),
		],
		# bonds
		B[
			newBond(B, 1, 2, getDefaultLabelN(LB, 1), (0, 0, 0)),
			newBond(B, 1, 2, getDefaultLabelN(LB, 1), (-1, 0, 0)),
			newBond(B, 1, 2, getDefaultLabelN(LB, 1), (0, -1, 0)),
			newBond(B, 1, 2, getDefaultLabelN(LB, 1), (0, 0, -1)),
			newBond(B, 2, 1, getDefaultLabelN(LB, 1), (0, 0, 0)),
			newBond(B, 2, 1, getDefaultLabelN(LB, 1), (1, 0, 0)),
			newBond(B, 2, 1, getDefaultLabelN(LB, 1), (0, 1, 0)),
			newBond(B, 2, 1, getDefaultLabelN(LB, 1), (0, 0, 1)),
			newBond(B, 1, 1, getDefaultLabelN(LB, 2), (1, 0, 0)),
			newBond(B, 1, 1, getDefaultLabelN(LB, 2), (-1, 0, 0)),
			newBond(B, 1, 1, getDefaultLabelN(LB, 2), (0, 1, 0)),
			newBond(B, 1, 1, getDefaultLabelN(LB, 2), (0, -1, 0)),
			newBond(B, 1, 1, getDefaultLabelN(LB, 2), (0, 0, 1)),
			newBond(B, 1, 1, getDefaultLabelN(LB, 2), (0, 0, -1)),
			newBond(B, 1, 1, getDefaultLabelN(LB, 2), (1, -1, 0)),
			newBond(B, 1, 1, getDefaultLabelN(LB, 2), (-1, 1, 0)),
			newBond(B, 1, 1, getDefaultLabelN(LB, 2), (0, 1, -1)),
			newBond(B, 1, 1, getDefaultLabelN(LB, 2), (0, -1, 1)),
			newBond(B, 1, 1, getDefaultLabelN(LB, 2), (-1, 0, 1)),
			newBond(B, 1, 1, getDefaultLabelN(LB, 2), (1, 0, -1)),
			newBond(B, 2, 2, getDefaultLabelN(LB, 2), (1, 0, 0)),
			newBond(B, 2, 2, getDefaultLabelN(LB, 2), (-1, 0, 0)),
			newBond(B, 2, 2, getDefaultLabelN(LB, 2), (0, 1, 0)),
			newBond(B, 2, 2, getDefaultLabelN(LB, 2), (0, -1, 0)),
			newBond(B, 2, 2, getDefaultLabelN(LB, 2), (0, 0, 1)),
			newBond(B, 2, 2, getDefaultLabelN(LB, 2), (0, 0, -1)),
			newBond(B, 2, 2, getDefaultLabelN(LB, 2), (1, -1, 0)),
			newBond(B, 2, 2, getDefaultLabelN(LB, 2), (-1, 1, 0)),
			newBond(B, 2, 2, getDefaultLabelN(LB, 2), (0, 1, -1)),
			newBond(B, 2, 2, getDefaultLabelN(LB, 2), (0, -1, 1)),
			newBond(B, 2, 2, getDefaultLabelN(LB, 2), (-1, 0, 1)),
			newBond(B, 2, 2, getDefaultLabelN(LB, 2), (1, 0, -1)),
		]
	)
end
