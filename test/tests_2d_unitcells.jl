# TESTS FOR ALL 2D UNITCELLS
@testset "2D Unitcells" begin

    #----------------------
    #   SQUARE
    #----------------------
    @testset "Square" begin

        # test Default Wrapper
        @test_nowarn getUnitcellSquare();

        # Test Wrapper with different label types
        @test_nowarn getUnitcellSquare(String);
        @test_nowarn getUnitcellSquare(Symbol);
        @test_nowarn getUnitcellSquare(Int64, Symbol);

        # Test Wrapper with different label types and specific version
        @test_nowarn getUnitcellSquare(1);
        @test_nowarn getUnitcellSquare(String, 1);
        @test_nowarn getUnitcellSquare(String, Symbol, 1);

    end


    #----------------------
    #   TRIANGULAR
    #----------------------
    @testset "Triangular" begin

        # test Default Wrapper
        @test_nowarn getUnitcellTriangular();

        # Test Wrapper with different label types
        @test_nowarn getUnitcellTriangular(String);
        @test_nowarn getUnitcellTriangular(Symbol);
        @test_nowarn getUnitcellTriangular(Int64, Symbol);

        # Test Wrapper with different label types and specific version
        @test_nowarn getUnitcellTriangular(1);
        @test_nowarn getUnitcellTriangular(String, 1);
        @test_nowarn getUnitcellTriangular(String, Symbol, 1);

    end



    #----------------------
    #   HONEYCOMB
    #----------------------
    @testset "Honeycomb" begin

        # test Default Wrapper
        @test_nowarn getUnitcellHoneycomb();

        # Test Wrapper with different label types
        @test_nowarn getUnitcellHoneycomb(String);
        @test_nowarn getUnitcellHoneycomb(Symbol);
        @test_nowarn getUnitcellHoneycomb(Int64, Symbol);

        # Test Wrapper with different label types and specific version
        @test_nowarn getUnitcellHoneycomb(1);
        @test_nowarn getUnitcellHoneycomb(String, 1);
        @test_nowarn getUnitcellHoneycomb(String, Symbol, 1);

        # Test Wrapper with different label types and specific version
        @test_nowarn getUnitcellHoneycomb(4);
        @test_nowarn getUnitcellHoneycomb(String, 4);
        @test_nowarn getUnitcellHoneycomb(String, Symbol, 4);

    end


    #----------------------
    #   KAGOME
    #----------------------
    @testset "Kagome" begin

        # test Default Wrapper
        @test_nowarn getUnitcellKagome();

        # Test Wrapper with different label types
        @test_nowarn getUnitcellKagome(String);
        @test_nowarn getUnitcellKagome(Symbol);
        @test_nowarn getUnitcellKagome(Int64, Symbol);

        # Test Wrapper with different label types and specific version
        @test_nowarn getUnitcellKagome(1);
        @test_nowarn getUnitcellKagome(String, 1);
        @test_nowarn getUnitcellKagome(String, Symbol, 1);

    end



end
