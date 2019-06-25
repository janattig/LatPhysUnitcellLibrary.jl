# TESTS FOR ALL 3D UNITCELLS
@testset "3D Unitcells" begin

    #----------------------
    #   CUBIC
    #----------------------
    @testset "Cubic" begin

        # test Default Wrapper
        @test_nowarn getUnitcellCubic();

        # Test the unitcell has the correct subtype
        @test typeof(getUnitcellCubic()) <: AbstractUnitcell{S,B} where {LS,S<:AbstractSite{LS,3}, LB,B<:AbstractBond{LB,3}}

        # test Default Wrapper getUnitcell(...)
        id = :cubic
        @test_nowarn getUnitcell(id);
        @test_nowarn getUnitcell(id, 1);
        @test_nowarn getUnitcell(id, Symbol);
        @test_nowarn getUnitcell(id, Symbol, 1);
        @test_nowarn getUnitcell(id, Int64, Symbol);
        @test_nowarn getUnitcell(id, Int64, Symbol, 1);

        # Test Wrapper with different label types
        @test_nowarn getUnitcellCubic(String);
        @test_nowarn getUnitcellCubic(Symbol);
        @test_nowarn getUnitcellCubic(Int64, Symbol);

        # Test Wrapper with different label types and specific version
        @test_nowarn getUnitcellCubic(1);
        @test_nowarn getUnitcellCubic(String, 1);
        @test_nowarn getUnitcellCubic(String, Symbol, 1);

    end

end
