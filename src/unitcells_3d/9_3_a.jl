################################################################################
#
#   (9,3)a
#
################################################################################


# Implementation
# - implementation 1
# - labels <: Any
function getUnitcell_9_3_a(
			unitcell_type  :: Type{U},
			implementation :: Val{1}
		) :: U where {LS,LB,S<:AbstractSite{LS,3},B<:AbstractBond{LB,3},U<:AbstractUnitcell{S,B}}

	# define some constants
	a = [1.0, 0.0, 0.0]
	b = [-0.5, sqrt(3)/2., 0.0]
	c = [0.0, 0.0, sqrt(6*(4 + sqrt(3)))/(1 + 2*sqrt(3))]
	d_f = sqrt(3)/(1+2*sqrt(3))
	d_h = (29 - 3*sqrt(3))/132.
	# return a new Unitcell
	return newUnitcell(
		# Type of the unitcell
		U,
		# lattice vectors
		Vector{Float64}[
			-a./3 + b./3 + c./3,
			-a./3 + b.*-2/3 + c./3,
			a.*2/3. + b./3 + c./3,
		],
		# sites
		S[
			newSite(S, d_f * a, getDefaultLabelN(LS,1)),
			newSite(S, 2*d_h * a + d_h * b + c/12., getDefaultLabelN(LS,2)),
			newSite(S, d_f * (a + b), getDefaultLabelN(LS,3)),
			newSite(S, d_h * a + 2*d_h * b - c/12., getDefaultLabelN(LS,4)),
			newSite(S, d_f * b, getDefaultLabelN(LS,5)),
			newSite(S, -d_h *a + d_h * b + c/12., getDefaultLabelN(LS,6)),
			newSite(S, -d_f * a, getDefaultLabelN(LS,7)),
			newSite(S, -2*d_h * a - d_h * b - c/12., getDefaultLabelN(LS,8)),
			newSite(S, -d_f * (a + b), getDefaultLabelN(LS,9)),
			newSite(S, -d_h * a - 2*d_h*b + c/12., getDefaultLabelN(LS,10)),
			newSite(S, -d_f * b, getDefaultLabelN(LS,11)),
			newSite(S, d_h * a - d_h * b - c/12., getDefaultLabelN(LS,12)),
		],
		# bonds
		B[
			newBond(B, 1, 2, getDefaultLabel(LB), (0, 0, 0)),
			newBond(B, 2, 3, getDefaultLabel(LB), (0, 0, 0)),
			newBond(B, 3, 4, getDefaultLabel(LB), (0, 0, 0)),
			newBond(B, 4, 5, getDefaultLabel(LB), (0, 0, 0)),
			newBond(B, 5, 6, getDefaultLabel(LB), (0, 0, 0)),
			newBond(B, 6, 7, getDefaultLabel(LB), (0, 0, 0)),
			newBond(B, 7, 8, getDefaultLabel(LB), (0, 0, 0)),
			newBond(B, 8, 9, getDefaultLabel(LB), (0, 0, 0)),
			newBond(B, 9, 10, getDefaultLabel(LB), (0, 0, 0)),
			newBond(B, 10, 11, getDefaultLabel(LB), (0, 0, 0)),
			newBond(B, 11, 12, getDefaultLabel(LB), (0, 0, 0)),
			newBond(B, 12, 1, getDefaultLabel(LB), (0, 0, 0)),
			newBond(B, 2, 1, getDefaultLabel(LB), (0, 0, 0)),
			newBond(B, 3, 2, getDefaultLabel(LB), (0, 0, 0)),
			newBond(B, 4, 3, getDefaultLabel(LB), (0, 0, 0)),
			newBond(B, 5, 4, getDefaultLabel(LB), (0, 0, 0)),
			newBond(B, 6, 5, getDefaultLabel(LB), (0, 0, 0)),
			newBond(B, 7, 6, getDefaultLabel(LB), (0, 0, 0)),
			newBond(B, 8, 7, getDefaultLabel(LB), (0, 0, 0)),
			newBond(B, 9, 8, getDefaultLabel(LB), (0, 0, 0)),
			newBond(B, 10, 9, getDefaultLabel(LB), (0, 0, 0)),
			newBond(B, 11, 10, getDefaultLabel(LB), (0, 0, 0)),
			newBond(B, 12, 11, getDefaultLabel(LB), (0, 0, 0)),
			newBond(B, 1, 12, getDefaultLabel(LB), (0, 0, 0)),
			newBond(B, 3, 9, getDefaultLabel(LB), (0, -1, 1)),
			newBond(B, 9, 3, getDefaultLabel(LB), (0, 1, -1)),
			newBond(B, 1, 7, getDefaultLabel(LB), (-1, 0, 1)),
			newBond(B, 7, 1, getDefaultLabel(LB), (1, 0, -1)),
			newBond(B, 5, 11, getDefaultLabel(LB), (1, -1, 0)),
			newBond(B, 11, 5, getDefaultLabel(LB), (-1, 1, 0)),
			newBond(B, 12, 6, getDefaultLabel(LB), (-1, 0, 0)),
			newBond(B, 6, 12, getDefaultLabel(LB), (1, 0, 0)),
			newBond(B, 8, 2, getDefaultLabel(LB), (0, 0, -1)),
			newBond(B, 2, 8, getDefaultLabel(LB), (0, 0, 1)),
			newBond(B, 4, 10, getDefaultLabel(LB), (0, -1, 0)),
			newBond(B, 10, 4, getDefaultLabel(LB), (0, 1, 0)),
		]
	)
end


# Implementation
# - implementation 2 (alternative definition)
# - labels <: Any
function getUnitcell_9_3_a(
			unitcell_type  :: Type{U},
			implementation :: Val{2}
		) :: U where {LS,LB,S<:AbstractSite{LS,3},B<:AbstractBond{LB,3},U<:AbstractUnitcell{S,B}}

	# define some constants
	a1 = [-sqrt(3)/2., 1/2., 1/sqrt(3)]
	a2 = [0, -1, 1/sqrt(3)]
	a3 = [sqrt(3)/2, 1/2, 1/sqrt(3)]
	# return a new Unitcell
	return newUnitcell(
		# Type of the unitcell
		U,
		# lattice vectors
		Vector{Float64}[
			Float64[-sqrt(3)/2., 1/2., 1/sqrt(3)],
			Float64[0, -1, 1/sqrt(3)],
			Float64[sqrt(3)/2, 1/2, 1/sqrt(3)],
		],
		# sites
		S[
			newSite(S, Float64[0, 0, 0], getDefaultLabelN(LS,1)),
			newSite(S, a1./6. - a2./6., getDefaultLabelN(LS,2)),
			newSite(S, a1./3. - a2./3., getDefaultLabelN(LS,3)),
			newSite(S, a1./2. - a2./3. - a3./6., getDefaultLabelN(LS,4)),
			newSite(S, 2/3 .* a1 - a2./3. - a3./3., getDefaultLabelN(LS,5)),
			newSite(S, 2/3 .* a1 - a2./6. - a3./2., getDefaultLabelN(LS,6)),
			newSite(S, 2/3 .* a1 - 2/3 .* a3, getDefaultLabelN(LS,7)),
			newSite(S, a1./2. + a2./6. - 2/3 .*a3, getDefaultLabelN(LS,8)),
			newSite(S, a1./3. + a2./3. - 2/3 .*a3, getDefaultLabelN(LS,9)),
			newSite(S, a1./6. + a2./3. - a3./2., getDefaultLabelN(LS,10)),
			newSite(S, a2./3. - a3./3., getDefaultLabelN(LS,11)),
			newSite(S, a2./6. - a3./6., getDefaultLabelN(LS,12)),
		],
		# bonds
		B[
			newBond(B, 1, 2, getDefaultLabel(LB), (0, 0, 0)),
			newBond(B, 2, 3, getDefaultLabel(LB), (0, 0, 0)),
			newBond(B, 3, 4, getDefaultLabel(LB), (0, 0, 0)),
			newBond(B, 4, 5, getDefaultLabel(LB), (0, 0, 0)),
			newBond(B, 5, 6, getDefaultLabel(LB), (0, 0, 0)),
			newBond(B, 6, 7, getDefaultLabel(LB), (0, 0, 0)),
			newBond(B, 7, 8, getDefaultLabel(LB), (0, 0, 0)),
			newBond(B, 8, 9, getDefaultLabel(LB), (0, 0, 0)),
			newBond(B, 9, 10, getDefaultLabel(LB), (0, 0, 0)),
			newBond(B, 10, 11, getDefaultLabel(LB), (0, 0, 0)),
			newBond(B, 11, 12, getDefaultLabel(LB), (0, 0, 0)),
			newBond(B, 12, 1, getDefaultLabel(LB), (0, 0, 0)),
			newBond(B, 2, 1, getDefaultLabel(LB), (0, 0, 0)),
			newBond(B, 3, 2, getDefaultLabel(LB), (0, 0, 0)),
			newBond(B, 4, 3, getDefaultLabel(LB), (0, 0, 0)),
			newBond(B, 5, 4, getDefaultLabel(LB), (0, 0, 0)),
			newBond(B, 6, 5, getDefaultLabel(LB), (0, 0, 0)),
			newBond(B, 7, 6, getDefaultLabel(LB), (0, 0, 0)),
			newBond(B, 8, 7, getDefaultLabel(LB), (0, 0, 0)),
			newBond(B, 9, 8, getDefaultLabel(LB), (0, 0, 0)),
			newBond(B, 10, 9, getDefaultLabel(LB), (0, 0, 0)),
			newBond(B, 11, 10, getDefaultLabel(LB), (0, 0, 0)),
			newBond(B, 12, 11, getDefaultLabel(LB), (0, 0, 0)),
			newBond(B, 1, 12, getDefaultLabel(LB), (0, 0, 0)),
			newBond(B, 1, 7, getDefaultLabel(LB), (-1, 0, 1)),
			newBond(B, 7, 1, getDefaultLabel(LB), (1, 0, -1)),
			newBond(B, 2, 8, getDefaultLabel(LB), (0, 0, 1)),
			newBond(B, 8, 2, getDefaultLabel(LB), (0, 0, -1)),
			newBond(B, 3, 9, getDefaultLabel(LB), (0, -1, 1)),
			newBond(B, 9, 3, getDefaultLabel(LB), (0, 1, -1)),
			newBond(B, 4, 10, getDefaultLabel(LB), (0, -1, 0)),
			newBond(B, 10, 4, getDefaultLabel(LB), (0, 1, 0)),
			newBond(B, 5, 11, getDefaultLabel(LB), (1, -1, 0)),
			newBond(B, 11, 5, getDefaultLabel(LB), (-1, 1, 0)),
			newBond(B, 6, 12, getDefaultLabel(LB), (1, 0, 0)),
			newBond(B, 12, 6, getDefaultLabel(LB), (-1, 0, 0)),
		]
	)
end


# Implementation
# - implementation 4 (Kitaev for 1)
# - labels <: Any
function getUnitcell_9_3_a(
			unitcell_type  :: Type{U},
			implementation :: Val{4}
		) :: U where {LS,LB,S<:AbstractSite{LS,3},B<:AbstractBond{LB,3},U<:AbstractUnitcell{S,B}}

	# define some constants
	a = [1.0, 0.0, 0.0]
	b = [-0.5, sqrt(3)/2., 0.0]
	c = [0.0, 0.0, sqrt(6*(4 + sqrt(3)))/(1 + 2*sqrt(3))]
	d_f = sqrt(3)/(1+2*sqrt(3))
	d_h = (29 - 3*sqrt(3))/132.
	# return a new Unitcell
	return newUnitcell(
		# Type of the unitcell
		U,
		# lattice vectors
        Vector{Float64}[
			-a./3 + b./3 + c./3,
			-a./3 + b.*-2/3 + c./3,
			a.*2/3. + b./3 + c./3,
		],
		# sites
		S[
			newSite(S, d_f * a, getDefaultLabelN(LS,1)),
			newSite(S, 2*d_h * a + d_h * b + c/12., getDefaultLabelN(LS,2)),
			newSite(S, d_f * (a + b), getDefaultLabelN(LS,3)),
			newSite(S, d_h * a + 2*d_h * b - c/12., getDefaultLabelN(LS,4)),
			newSite(S, d_f * b, getDefaultLabelN(LS,5)),
			newSite(S, -d_h *a + d_h * b + c/12., getDefaultLabelN(LS,6)),
			newSite(S, -d_f * a, getDefaultLabelN(LS,7)),
			newSite(S, -2*d_h * a - d_h * b - c/12., getDefaultLabelN(LS,8)),
			newSite(S, -d_f * (a + b), getDefaultLabelN(LS,9)),
			newSite(S, -d_h * a - 2*d_h*b + c/12., getDefaultLabelN(LS,10)),
			newSite(S, -d_f * b, getDefaultLabelN(LS,11)),
			newSite(S, d_h * a - d_h * b - c/12., getDefaultLabelN(LS,12)),
		],
		# bonds
		B[
			newBond(B, 1, 2, getDefaultLabelX(LB), (0, 0, 0)),
			newBond(B, 2, 3, getDefaultLabelY(LB), (0, 0, 0)),
			newBond(B, 3, 4, getDefaultLabelX(LB), (0, 0, 0)),
			newBond(B, 4, 5, getDefaultLabelY(LB), (0, 0, 0)),
			newBond(B, 5, 6, getDefaultLabelX(LB), (0, 0, 0)),
			newBond(B, 6, 7, getDefaultLabelY(LB), (0, 0, 0)),
			newBond(B, 7, 8, getDefaultLabelX(LB), (0, 0, 0)),
			newBond(B, 8, 9, getDefaultLabelY(LB), (0, 0, 0)),
			newBond(B, 9, 10, getDefaultLabelX(LB), (0, 0, 0)),
			newBond(B, 10, 11, getDefaultLabelY(LB), (0, 0, 0)),
			newBond(B, 11, 12, getDefaultLabelX(LB), (0, 0, 0)),
			newBond(B, 12, 1, getDefaultLabelY(LB), (0, 0, 0)),
			newBond(B, 2, 1, getDefaultLabelX(LB), (0, 0, 0)),
			newBond(B, 3, 2, getDefaultLabelY(LB), (0, 0, 0)),
			newBond(B, 4, 3, getDefaultLabelX(LB), (0, 0, 0)),
			newBond(B, 5, 4, getDefaultLabelY(LB), (0, 0, 0)),
			newBond(B, 6, 5, getDefaultLabelX(LB), (0, 0, 0)),
			newBond(B, 7, 6, getDefaultLabelY(LB), (0, 0, 0)),
			newBond(B, 8, 7, getDefaultLabelX(LB), (0, 0, 0)),
			newBond(B, 9, 8, getDefaultLabelY(LB), (0, 0, 0)),
			newBond(B, 10, 9, getDefaultLabelX(LB), (0, 0, 0)),
			newBond(B, 11, 10, getDefaultLabelY(LB), (0, 0, 0)),
			newBond(B, 12, 11, getDefaultLabelX(LB), (0, 0, 0)),
			newBond(B, 1, 12, getDefaultLabelY(LB), (0, 0, 0)),
			newBond(B, 3, 9, getDefaultLabelZ(LB), (0, -1, 1)),
			newBond(B, 9, 3, getDefaultLabelZ(LB), (0, 1, -1)),
			newBond(B, 1, 7, getDefaultLabelZ(LB), (-1, 0, 1)),
			newBond(B, 7, 1, getDefaultLabelZ(LB), (1, 0, -1)),
			newBond(B, 5, 11, getDefaultLabelZ(LB), (1, -1, 0)),
			newBond(B, 11, 5, getDefaultLabelZ(LB), (-1, 1, 0)),
			newBond(B, 12, 6, getDefaultLabelZ(LB), (-1, 0, 0)),
			newBond(B, 6, 12, getDefaultLabelZ(LB), (1, 0, 0)),
			newBond(B, 8, 2, getDefaultLabelZ(LB), (0, 0, -1)),
			newBond(B, 2, 8, getDefaultLabelZ(LB), (0, 0, 1)),
			newBond(B, 4, 10, getDefaultLabelZ(LB), (0, -1, 0)),
			newBond(B, 10, 4, getDefaultLabelZ(LB), (0, 1, 0)),
		]
	)
end


# Implementation
# - implementation 5 (Kitaev for 2)
# - labels <: Any
function getUnitcell_9_3_a(
			unitcell_type  :: Type{U},
			implementation :: Val{5}
		) :: U where {LS,LB,S<:AbstractSite{LS,3},B<:AbstractBond{LB,3},U<:AbstractUnitcell{S,B}}

	# define some constants
	a1 = [-sqrt(3)/2., 1/2., 1/sqrt(3)]
	a2 = [0, -1, 1/sqrt(3)]
	a3 = [sqrt(3)/2, 1/2, 1/sqrt(3)]
	# return a new Unitcell
	return newUnitcell(
		# Type of the unitcell
		U,
		# lattice vectors
		Vector{Float64}[
			Float64[-sqrt(3)/2., 1/2., 1/sqrt(3)],
			Float64[0, -1, 1/sqrt(3)],
			Float64[sqrt(3)/2, 1/2, 1/sqrt(3)],
		],
		# sites
		S[
			newSite(S, Float64[0, 0, 0], getDefaultLabelN(LS,1)),
			newSite(S, a1./6. - a2./6., getDefaultLabelN(LS,2)),
			newSite(S, a1./3. - a2./3., getDefaultLabelN(LS,3)),
			newSite(S, a1./2. - a2./3. - a3./6., getDefaultLabelN(LS,4)),
			newSite(S, 2/3 .* a1 - a2./3. - a3./3., getDefaultLabelN(LS,5)),
			newSite(S, 2/3 .* a1 - a2./6. - a3./2., getDefaultLabelN(LS,6)),
			newSite(S, 2/3 .* a1 - 2/3 .*a3, getDefaultLabelN(LS,7)),
			newSite(S, a1./2. + a2./6. - 2/3 .*a3, getDefaultLabelN(LS,8)),
			newSite(S, a1./3. + a2./3. - 2/3 .*a3, getDefaultLabelN(LS,9)),
			newSite(S, a1./6. + a2./3. - a3./2., getDefaultLabelN(LS,10)),
			newSite(S, a2./3. - a3./3., getDefaultLabelN(LS,11)),
			newSite(S, a2./6. - a3./6., getDefaultLabelN(LS,12)),
		],
		# bonds
		B[
			newBond(B, 1, 2, getDefaultLabelX(LB), (0, 0, 0)),
			newBond(B, 2, 3, getDefaultLabelY(LB), (0, 0, 0)),
			newBond(B, 3, 4, getDefaultLabelX(LB), (0, 0, 0)),
			newBond(B, 4, 5, getDefaultLabelY(LB), (0, 0, 0)),
			newBond(B, 5, 6, getDefaultLabelX(LB), (0, 0, 0)),
			newBond(B, 6, 7, getDefaultLabelY(LB), (0, 0, 0)),
			newBond(B, 7, 8, getDefaultLabelX(LB), (0, 0, 0)),
			newBond(B, 8, 9, getDefaultLabelY(LB), (0, 0, 0)),
			newBond(B, 9, 10, getDefaultLabelX(LB), (0, 0, 0)),
			newBond(B, 10, 11, getDefaultLabelY(LB), (0, 0, 0)),
			newBond(B, 11, 12, getDefaultLabelX(LB), (0, 0, 0)),
			newBond(B, 12, 1, getDefaultLabelY(LB), (0, 0, 0)),
			newBond(B, 2, 1, getDefaultLabelX(LB), (0, 0, 0)),
			newBond(B, 3, 2, getDefaultLabelY(LB), (0, 0, 0)),
			newBond(B, 4, 3, getDefaultLabelX(LB), (0, 0, 0)),
			newBond(B, 5, 4, getDefaultLabelY(LB), (0, 0, 0)),
			newBond(B, 6, 5, getDefaultLabelX(LB), (0, 0, 0)),
			newBond(B, 7, 6, getDefaultLabelY(LB), (0, 0, 0)),
			newBond(B, 8, 7, getDefaultLabelX(LB), (0, 0, 0)),
			newBond(B, 9, 8, getDefaultLabelY(LB), (0, 0, 0)),
			newBond(B, 10, 9, getDefaultLabelX(LB), (0, 0, 0)),
			newBond(B, 11, 10, getDefaultLabelY(LB), (0, 0, 0)),
			newBond(B, 12, 11, getDefaultLabelX(LB), (0, 0, 0)),
			newBond(B, 1, 12, getDefaultLabelY(LB), (0, 0, 0)),
			newBond(B, 1, 7, getDefaultLabelZ(LB), (-1, 0, 1)),
			newBond(B, 7, 1, getDefaultLabelZ(LB), (1, 0, -1)),
			newBond(B, 2, 8, getDefaultLabelZ(LB), (0, 0, 1)),
			newBond(B, 8, 2, getDefaultLabelZ(LB), (0, 0, -1)),
			newBond(B, 3, 9, getDefaultLabelZ(LB), (0, -1, 1)),
			newBond(B, 9, 3, getDefaultLabelZ(LB), (0, 1, -1)),
			newBond(B, 4, 10, getDefaultLabelZ(LB), (0, -1, 0)),
			newBond(B, 10, 4, getDefaultLabelZ(LB), (0, 1, 0)),
			newBond(B, 5, 11, getDefaultLabelZ(LB), (1, -1, 0)),
			newBond(B, 11, 5, getDefaultLabelZ(LB), (-1, 1, 0)),
			newBond(B, 6, 12, getDefaultLabelZ(LB), (1, 0, 0)),
			newBond(B, 12, 6, getDefaultLabelZ(LB), (-1, 0, 0)),
		]
	)
end
