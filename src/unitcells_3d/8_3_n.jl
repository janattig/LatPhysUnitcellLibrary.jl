################################################################################
#
#   (8,3)n
#
################################################################################


# Implementation
# - implementation 1
# - labels <: Any
function getUnitcell_8_3_n(
			unitcell_type  :: Type{U},
			implementation :: Val{1}
		) :: U where {LS,LB,S<:AbstractSite{LS,2},B<:AbstractBond{LB,3},U<:AbstractUnitcell{S,B}}

	# define some constants
	a = [1.0, 0.0, 0.0]
	b = [0.0, 1.0, 0.0]
	c = [0.0, 0.0, 4/(2*sqrt(3) + sqrt(2))]
	x = (sqrt(3) + sqrt(2))/(2*(2*sqrt(3) + sqrt(2)))
	z = 0.125
	# return a new Unitcell
	return newUnitcell(
		# Type of the unitcell
		U,
		# lattice vectors
		Vector{Float64}[
			a,
			b,
			0.5*(a+b+c),
		],
		# sites
		S[
			newSite(S, x.*a + (0.5 - x).*b +      0.25.*c, getDefaultLabelN(LS,1)),
			newSite(S, (1-x).*a + (0.5 - x).*b +      0.25.*c, getDefaultLabelN(LS,2)),
			newSite(S, (0.5 + x).*a +       0.5.*b + (0.5 - z).*c, getDefaultLabelN(LS,3)),
			newSite(S, (1-x).*a + (0.5 + x).*b +      0.25.*c, getDefaultLabelN(LS,4)),
			newSite(S, x.*a + (0.5 + x).*b +      0.25.*c, getDefaultLabelN(LS,5)),
			newSite(S, (0.5 - x).*a +       0.5.*b + (0.5 - z).*c, getDefaultLabelN(LS,6)),
			newSite(S, (1-x).*b +         z.*c, getDefaultLabelN(LS,7)),
			newSite(S, x.*b +         z.*c, getDefaultLabelN(LS,8)),
			newSite(S, (0.5 - x).*a +         x.*b +      0.25.*c, getDefaultLabelN(LS,9)),
			newSite(S, 0.5.*a + (0.5 - x).*b + (0.5 - z).*c, getDefaultLabelN(LS,10)),
			newSite(S, (0.5 + x).*a +         x.*b +      0.25.*c, getDefaultLabelN(LS,11)),
			newSite(S, (0.5 + x).*a +   (1 - x).*b +      0.25.*c, getDefaultLabelN(LS,12)),
			newSite(S, 0.5.*a + (0.5 + x).*b + (0.5 - z).*c, getDefaultLabelN(LS,13)),
			newSite(S, (0.5 - x).*a +   (1 - x).*b +      0.25.*c, getDefaultLabelN(LS,14)),
			newSite(S, x.*a                +         z.*c, getDefaultLabelN(LS,15)),
			newSite(S, (1-x).*a                +         z.*c, getDefaultLabelN(LS,16)),
		],
		# bonds
		B[
			newBond(B, 1, 10, getDefaultLabel(LB), (0, 0, 0)),
			newBond(B, 10, 2, getDefaultLabel(LB), (0, 0, 0)),
			newBond(B, 2, 11, getDefaultLabel(LB), (0, 0, 0)),
			newBond(B, 11, 3, getDefaultLabel(LB), (0, 0, 0)),
			newBond(B, 3, 12, getDefaultLabel(LB), (0, 0, 0)),
			newBond(B, 12, 4, getDefaultLabel(LB), (0, 0, 0)),
			newBond(B, 4, 13, getDefaultLabel(LB), (0, 0, 0)),
			newBond(B, 13, 5, getDefaultLabel(LB), (0, 0, 0)),
			newBond(B, 5, 14, getDefaultLabel(LB), (0, 0, 0)),
			newBond(B, 14, 6, getDefaultLabel(LB), (0, 0, 0)),
			newBond(B, 6, 9, getDefaultLabel(LB), (0, 0, 0)),
			newBond(B, 9, 8, getDefaultLabel(LB), (0, 0, 0)),
			newBond(B, 9, 1, getDefaultLabel(LB), (0, 0, 0)),
			newBond(B, 1, 15, getDefaultLabel(LB), (0, 0, 0)),
			newBond(B, 2, 16, getDefaultLabel(LB), (0, 0, 0)),
			newBond(B, 14, 7, getDefaultLabel(LB), (0, 0, 0)),
			newBond(B, 10, 1, getDefaultLabel(LB), (0, 0, 0)),
			newBond(B, 2, 10, getDefaultLabel(LB), (0, 0, 0)),
			newBond(B, 11, 2, getDefaultLabel(LB), (0, 0, 0)),
			newBond(B, 3, 11, getDefaultLabel(LB), (0, 0, 0)),
			newBond(B, 12, 3, getDefaultLabel(LB), (0, 0, 0)),
			newBond(B, 4, 12, getDefaultLabel(LB), (0, 0, 0)),
			newBond(B, 13, 4, getDefaultLabel(LB), (0, 0, 0)),
			newBond(B, 5, 13, getDefaultLabel(LB), (0, 0, 0)),
			newBond(B, 14, 5, getDefaultLabel(LB), (0, 0, 0)),
			newBond(B, 6, 14, getDefaultLabel(LB), (0, 0, 0)),
			newBond(B, 9, 6, getDefaultLabel(LB), (0, 0, 0)),
			newBond(B, 8, 9, getDefaultLabel(LB), (0, 0, 0)),
			newBond(B, 1, 9, getDefaultLabel(LB), (0, 0, 0)),
			newBond(B, 15, 1, getDefaultLabel(LB), (0, 0, 0)),
			newBond(B, 16, 2, getDefaultLabel(LB), (0, 0, 0)),
			newBond(B, 7, 14, getDefaultLabel(LB), (0, 0, 0)),
			newBond(B, 11, 8, getDefaultLabel(LB), (1, 0, 0)),
			newBond(B, 8, 11, getDefaultLabel(LB), (-1, 0, 0)),
			newBond(B, 12, 7, getDefaultLabel(LB), (1, 0, 0)),
			newBond(B, 7, 12, getDefaultLabel(LB), (-1, 0, 0)),
			newBond(B, 7, 10, getDefaultLabel(LB), (0, 1, -1)),
			newBond(B, 10, 7, getDefaultLabel(LB), (0, -1, 1)),
			newBond(B, 8, 13, getDefaultLabel(LB), (0, 0, -1)),
			newBond(B, 13, 8, getDefaultLabel(LB), (0, 0, 1)),
			newBond(B, 16, 4, getDefaultLabel(LB), (0, -1, 0)),
			newBond(B, 4, 16, getDefaultLabel(LB), (0, 1, 0)),
			newBond(B, 15, 5, getDefaultLabel(LB), (0, -1, 0)),
			newBond(B, 5, 15, getDefaultLabel(LB), (0, 1, 0)),
			newBond(B, 15, 3, getDefaultLabel(LB), (0, 0, -1)),
			newBond(B, 3, 15, getDefaultLabel(LB), (0, 0, 1)),
			newBond(B, 16, 6, getDefaultLabel(LB), (1, 0, -1)),
			newBond(B, 6, 16, getDefaultLabel(LB), (-1, 0, 1)),
		]
	)
end


# Implementation
# - implementation 4 (Kitaev)
# - labels <: Any
function getUnitcell_8_3_n(
			unitcell_type  :: Type{U},
			implementation :: Val{4}
		) :: U where {LS,LB,S<:AbstractSite{LS,2},B<:AbstractBond{LB,3},U<:AbstractUnitcell{S,B}}

	# define some constants
	a = [1.0, 0.0, 0.0]
	b = [0.0, 1.0, 0.0]
	c = [0.0, 0.0, 4/(2*sqrt(3) + sqrt(2))]
	x = (sqrt(3) + sqrt(2))/(2*(2*sqrt(3) + sqrt(2)))
	z = 0.125
	# return a new Unitcell
	return newUnitcell(
		# Type of the unitcell
		U,
		# lattice vectors
		Vector{Float64}[
			a,
			b,
			0.5*(a+b+c),
		],
		# sites
		S[
			newSite(S, x.*a + (0.5 - x).*b +      0.25.*c, getDefaultLabelN(LS,1)),
			newSite(S, (1-x).*a + (0.5 - x).*b +      0.25.*c, getDefaultLabelN(LS,2)),
			newSite(S, (0.5 + x).*a +       0.5.*b + (0.5 - z).*c, getDefaultLabelN(LS,3)),
			newSite(S, (1-x).*a + (0.5 + x).*b +      0.25.*c, getDefaultLabelN(LS,4)),
			newSite(S, x.*a + (0.5 + x).*b +      0.25.*c, getDefaultLabelN(LS,5)),
			newSite(S, (0.5 - x).*a +       0.5.*b + (0.5 - z).*c, getDefaultLabelN(LS,6)),
			newSite(S, (1-x).*b +         z.*c, getDefaultLabelN(LS,7)),
			newSite(S, x.*b +         z.*c, getDefaultLabelN(LS,8)),
			newSite(S, (0.5 - x).*a +         x.*b +      0.25.*c, getDefaultLabelN(LS,9)),
			newSite(S, 0.5.*a + (0.5 - x).*b + (0.5 - z).*c, getDefaultLabelN(LS,10)),
			newSite(S, (0.5 + x).*a +         x.*b +      0.25.*c, getDefaultLabelN(LS,11)),
			newSite(S, (0.5 + x).*a +   (1 - x).*b +      0.25.*c, getDefaultLabelN(LS,12)),
			newSite(S, 0.5.*a + (0.5 + x).*b + (0.5 - z).*c, getDefaultLabelN(LS,13)),
			newSite(S, (0.5 - x).*a +   (1 - x).*b +      0.25.*c, getDefaultLabelN(LS,14)),
			newSite(S, x.*a                +         z.*c, getDefaultLabelN(LS,15)),
			newSite(S, (1-x).*a                +         z.*c, getDefaultLabelN(LS,16)),
		],
		# bonds
		B[
			newBond(B, 1, 10, getDefaultLabelX(LB), (0, 0, 0)),
			newBond(B, 10, 2, getDefaultLabelY(LB), (0, 0, 0)),
			newBond(B, 2, 11, getDefaultLabelZ(LB), (0, 0, 0)),
			newBond(B, 11, 3, getDefaultLabelX(LB), (0, 0, 0)),
			newBond(B, 3, 12, getDefaultLabelY(LB), (0, 0, 0)),
			newBond(B, 12, 4, getDefaultLabelZ(LB), (0, 0, 0)),
			newBond(B, 4, 13, getDefaultLabelX(LB), (0, 0, 0)),
			newBond(B, 13, 5, getDefaultLabelY(LB), (0, 0, 0)),
			newBond(B, 5, 14, getDefaultLabelZ(LB), (0, 0, 0)),
			newBond(B, 14, 6, getDefaultLabelX(LB), (0, 0, 0)),
			newBond(B, 6, 9, getDefaultLabelY(LB), (0, 0, 0)),
			newBond(B, 9, 8, getDefaultLabelX(LB), (0, 0, 0)),
			newBond(B, 9, 1, getDefaultLabelZ(LB), (0, 0, 0)),
			newBond(B, 1, 15, getDefaultLabelY(LB), (0, 0, 0)),
			newBond(B, 2, 16, getDefaultLabelX(LB), (0, 0, 0)),
			newBond(B, 14, 7, getDefaultLabelY(LB), (0, 0, 0)),
			newBond(B, 10, 1, getDefaultLabelX(LB), (0, 0, 0)),
			newBond(B, 2, 10, getDefaultLabelY(LB), (0, 0, 0)),
			newBond(B, 11, 2, getDefaultLabelZ(LB), (0, 0, 0)),
			newBond(B, 3, 11, getDefaultLabelX(LB), (0, 0, 0)),
			newBond(B, 12, 3, getDefaultLabelY(LB), (0, 0, 0)),
			newBond(B, 4, 12, getDefaultLabelZ(LB), (0, 0, 0)),
			newBond(B, 13, 4, getDefaultLabelX(LB), (0, 0, 0)),
			newBond(B, 5, 13, getDefaultLabelY(LB), (0, 0, 0)),
			newBond(B, 14, 5, getDefaultLabelZ(LB), (0, 0, 0)),
			newBond(B, 6, 14, getDefaultLabelX(LB), (0, 0, 0)),
			newBond(B, 9, 6, getDefaultLabelY(LB), (0, 0, 0)),
			newBond(B, 8, 9, getDefaultLabelX(LB), (0, 0, 0)),
			newBond(B, 1, 9, getDefaultLabelZ(LB), (0, 0, 0)),
			newBond(B, 15, 1, getDefaultLabelY(LB), (0, 0, 0)),
			newBond(B, 16, 2, getDefaultLabelX(LB), (0, 0, 0)),
			newBond(B, 7, 14, getDefaultLabelY(LB), (0, 0, 0)),
			newBond(B, 11, 8, getDefaultLabelY(LB), (1, 0, 0)),
			newBond(B, 8, 11, getDefaultLabelY(LB), (-1, 0, 0)),
			newBond(B, 12, 7, getDefaultLabelX(LB), (1, 0, 0)),
			newBond(B, 7, 12, getDefaultLabelX(LB), (-1, 0, 0)),
			newBond(B, 7, 10, getDefaultLabelZ(LB), (0, 1, -1)),
			newBond(B, 10, 7, getDefaultLabelZ(LB), (0, -1, 1)),
			newBond(B, 8, 13, getDefaultLabelZ(LB), (0, 0, -1)),
			newBond(B, 13, 8, getDefaultLabelZ(LB), (0, 0, 1)),
			newBond(B, 16, 4, getDefaultLabelY(LB), (0, -1, 0)),
			newBond(B, 4, 16, getDefaultLabelY(LB), (0, 1, 0)),
			newBond(B, 15, 5, getDefaultLabelX(LB), (0, -1, 0)),
			newBond(B, 5, 15, getDefaultLabelX(LB), (0, 1, 0)),
			newBond(B, 15, 3, getDefaultLabelZ(LB), (0, 0, -1)),
			newBond(B, 3, 15, getDefaultLabelZ(LB), (0, 0, 1)),
			newBond(B, 16, 6, getDefaultLabelZ(LB), (1, 0, -1)),
			newBond(B, 6, 16, getDefaultLabelZ(LB), (-1, 0, 1)),
		]
	)
end
