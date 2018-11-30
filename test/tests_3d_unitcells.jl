# TESTS FOR ALL 3D UNITCELLS
@testset "3D Unitcells" begin

    #----------------------
    #   CUBIC
    #----------------------
    @testset "Cubic" begin

        # test Default Wrapper
        @test_nowarn getUnitcellCubic();

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
