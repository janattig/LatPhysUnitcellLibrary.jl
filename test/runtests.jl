using LatPhysUnitcellLibrary
using Test

@testset "LatPhysUnitcellLibrary.jl" begin

    # TEST THE 2D UNITCELLS
    include("tests_2d_unitcells.jl")

    # TEST THE 3D UNITCELLS
    include("tests_3d_unitcells.jl")

    # TEST THE CODE GENERATION
    include("tests_code_generation.jl")


end
