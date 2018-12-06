################################################################################
#
#   DEFINITION OF GENERIC INTERFACE
#
################################################################################


# generic interface function
function getUnitcell(
            identifier :: Symbol,
            args...
        )

    # parse the identifier to a Val-type
    return getUnitcell(Val(identifier), args...)
end


# generic fallback
function getUnitcell(
            identifier :: Val{V},
            args...
        ) where {V}

    # throw an error
    error("Unitcell " * string(V) * " not implemented yet")
end


# EXPORT OF THE FUNCTION
export getUnitcell
