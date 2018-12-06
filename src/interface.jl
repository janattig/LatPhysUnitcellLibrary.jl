# TODO Develope common interface like getUnitcell

# THE FOLLOWING THINGS SHOULD WORK WITH ANY UNITCELL (version::Int64, label::Type{L})
# getUnitcell() --> version=1, label_sites=Int64, label_bonds=Int64, Unitcell{Site, Bond}
# getUnitcell(version) --> label_sites=Int64, label_bonds=Int64, Unitcell{Site, Bond}
# getUnitcell(label) --> version=1, label_sites=label, label_bonds=label, Unitcell{Site, Bond}
# getUnitcell(label, version) --> label_sites=label, label_bonds=label, Unitcell{Site, Bond}
# getUnitcell(label_sites, label_bonds) --> version=1, Unitcell{Site, Bond}
# getUnitcell(label_sites, label_bonds, version) --> Unitcell{Site, Bond}
# getUnitcell(unitcell_type) --> version=1
# getUnitcell(unitcell_type, version)






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
