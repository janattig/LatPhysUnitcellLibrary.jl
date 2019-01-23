# LIST OF OPERATORNAMES
functions_generate = Tuple{String, Int64, Int64}[
    ("Square", 2, 2),
    ("SquareOctagon", 2, 2),
    ("Triangular", 2, 2),
    ("Honeycomb", 2, 2),
    ("Kagome", 2, 2),

    ("Cubic", 3, 3),
    ("FCC", 3, 3)
]



# go through all elements and generate interface functions
for operatorpair in functions_generate

    # get D and N
    D = operatorpair[2]
    N = operatorpair[3]
    # generate a global name for getUnitcellXXX Syntax
    function_name = "getUnitcell" * filter(c -> isascii(c) && isletter(c), uppercase(operatorpair[1][1]) * operatorpair[1][2:end])
    function_id   = lowercase(filter(c -> isascii(c) && isletter(c), operatorpair[1]))

    # evaluate global export
    eval( quote
    export $(Symbol(function_name))
    end )


    # global interface type (tmp)
    function_id_val = Val{Symbol(function_id)}
    # evaluate global interface scheme
    eval( quote
    function getUnitcell(
                identifier :: $(function_id_val),
                args...
            )

        # return the fitting honeycomb function
        return $(Symbol(function_name))(args...)
    end
    end )


    # evaluating type specific master functions

    # Referencing to individual functions by wrapping in Val()
    eval( quote
    function $(Symbol(function_name))(
                unitcell_type  :: Type{U},
                implementation :: Int64 = 1
            ) :: U where {LS,LB,S<:AbstractSite{LS,$D},B<:AbstractBond{LB,$N},U<:AbstractUnitcell{S,B}}

        # call the respective subfunction by converting to val type
        return $(Symbol(function_name))(unitcell_type, Val(implementation))
    end
    end )

    # Fallback for all implementations (if Val{V} is not found)
    eval( quote
    function $(Symbol(function_name))(
                unitcell_type  :: Type{U},
                implementation :: Val{V}
            ) :: U where {LS,LB,S<:AbstractSite{LS,$D},B<:AbstractBond{LB,$N},U<:AbstractUnitcell{S,B},V}

        # fallback / fail due to missing implementation
        error("Implementation " * string(V) * $(" of " * function_id * " unitcell (label types ") * string(LS) * " / " * string(LB) * ") not implemented yet")
    end
    end )




    # evaluating WRAPPER FUNCTIONS (for concrete Unitcell type) call general function

    # wrapper function for passing no label types (and implementation) (DEFAULT)
    eval( quote
    function $(Symbol(function_name))(
                implementation :: Int64 = 1
            ) :: Unitcell{Site{Int64,$D},Bond{Int64,$N}}

        # create a suitable unitcell of the Unitcell type
        return $(Symbol(function_name))(Unitcell{Site{Int64,$D},Bond{Int64,$N}}, implementation)
    end
    end )

    # wrapper function for passing common label type (and implementation)
    eval( quote
    function $(Symbol(function_name))(
                label_type     :: Type{L},
                implementation :: Int64 = 1
            ) :: Unitcell{Site{L,$D},Bond{L,$N}} where L

        # create a suitable unitcell of the Unitcell type
        return $(Symbol(function_name))(Unitcell{Site{L,$D},Bond{L,$N}}, implementation)
    end
    end )

    # wrapper function for passing site / bond label types (and implementation)
    eval( quote
    function $(Symbol(function_name))(
                label_type_site :: Type{LS},
                label_type_bond :: Type{LB},
                implementation  :: Int64 = 1
            ) :: Unitcell{Site{LS,$D},Bond{LB,$N}} where {LS,LB}

        # create a suitable unitcell of the Unitcell type
        return $(Symbol(function_name))(Unitcell{Site{LS,$D},Bond{LB,$N}}, implementation)
    end
    end )



end
