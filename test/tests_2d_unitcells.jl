# TESTS FOR ALL 2D UNITCELLS
@testset "2D Unitcells" begin

    #----------------------
    #   SQUARE
    #----------------------
    @testset "Square" begin

        # test Default Wrapper
        @test_nowarn getUnitcellSquare();

        # Test the unitcell has the correct subtype
        @test typeof(getUnitcellSquare()) <: AbstractUnitcell{S,B} where {LS,S<:AbstractSite{LS,2}, LB,B<:AbstractBond{LB,2}}

        # test Default Wrapper getUnitcell(...)
        id = :square
        @test_nowarn getUnitcell(id);
        @test_nowarn getUnitcell(id, 1);
        @test_nowarn getUnitcell(id, Symbol);
        @test_nowarn getUnitcell(id, Symbol, 1);
        @test_nowarn getUnitcell(id, Int64, Symbol);
        @test_nowarn getUnitcell(id, Int64, Symbol, 1);

        # Test Wrapper with different label types
        @test_nowarn getUnitcellSquare(String);
        @test_nowarn getUnitcellSquare(Symbol);
        @test_nowarn getUnitcellSquare(Int64, Symbol);

        # Test Wrapper with different label types and specific version
        @test_nowarn getUnitcellSquare(1);
        @test_nowarn getUnitcellSquare(String, 1);
        @test_nowarn getUnitcellSquare(String, Symbol, 1);

        # Test Wrapper with different label types and specific version
        @test_nowarn getUnitcellSquare(3);
        @test_nowarn getUnitcellSquare(String, 3);
        @test_nowarn getUnitcellSquare(String, Symbol, 3);

        # Test Wrapper with different label types and specific version
        @test_nowarn getUnitcellSquare(-3);
        @test_nowarn getUnitcellSquare(String, -3);
        @test_nowarn getUnitcellSquare(String, Symbol, -3);

    end


    #----------------------
    #   TRIANGULAR
    #----------------------
    @testset "Triangular" begin

        # test Default Wrapper
        @test_nowarn getUnitcellTriangular();

        # Test the unitcell has the correct subtype
        @test typeof(getUnitcellTriangular()) <: AbstractUnitcell{S,B} where {LS,S<:AbstractSite{LS,2}, LB,B<:AbstractBond{LB,2}}

        # test Default Wrapper getUnitcell(...)
        id = :triangular
        @test_nowarn getUnitcell(id);
        @test_nowarn getUnitcell(id, 1);
        @test_nowarn getUnitcell(id, Symbol);
        @test_nowarn getUnitcell(id, Symbol, 1);
        @test_nowarn getUnitcell(id, Int64, Symbol);
        @test_nowarn getUnitcell(id, Int64, Symbol, 1);

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

        # Test the unitcell has the correct subtype
        @test typeof(getUnitcellHoneycomb()) <: AbstractUnitcell{S,B} where {LS,S<:AbstractSite{LS,2}, LB,B<:AbstractBond{LB,2}}

        # test Default Wrapper getUnitcell(...)
        id = :honeycomb
        @test_nowarn getUnitcell(id);
        @test_nowarn getUnitcell(id, 1);
        @test_nowarn getUnitcell(id, Symbol);
        @test_nowarn getUnitcell(id, Symbol, 1);
        @test_nowarn getUnitcell(id, Int64, Symbol);
        @test_nowarn getUnitcell(id, Int64, Symbol, 1);

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

        # test that there are enough Kitaev bonds
        @test length(unique(label.(bonds(getUnitcellHoneycomb(4))))) == 3

    end


    #----------------------
    #   KAGOME
    #----------------------
    @testset "Kagome" begin

        # test Default Wrapper
        @test_nowarn getUnitcellKagome();

        # Test the unitcell has the correct subtype
        @test typeof(getUnitcellKagome()) <: AbstractUnitcell{S,B} where {LS,S<:AbstractSite{LS,2}, LB,B<:AbstractBond{LB,2}}

        # test Default Wrapper getUnitcell(...)
        id = :kagome
        @test_nowarn getUnitcell(id);
        @test_nowarn getUnitcell(id, 1);
        @test_nowarn getUnitcell(id, Symbol);
        @test_nowarn getUnitcell(id, Symbol, 1);
        @test_nowarn getUnitcell(id, Int64, Symbol);
        @test_nowarn getUnitcell(id, Int64, Symbol, 1);

        # Test Wrapper with different label types
        @test_nowarn getUnitcellKagome(String);
        @test_nowarn getUnitcellKagome(Symbol);
        @test_nowarn getUnitcellKagome(Int64, Symbol);

        # Test Wrapper with different label types and specific version
        @test_nowarn getUnitcellKagome(1);
        @test_nowarn getUnitcellKagome(String, 1);
        @test_nowarn getUnitcellKagome(String, Symbol, 1);

    end


    #----------------------
    #   SQUARE-OCTAGON
    #----------------------
    @testset "Square-Octagon" begin

        # test Default Wrapper
        @test_nowarn getUnitcellSquareOctagon();

        # Test the unitcell has the correct subtype
        @test typeof(getUnitcellSquareOctagon()) <: AbstractUnitcell{S,B} where {LS,S<:AbstractSite{LS,2}, LB,B<:AbstractBond{LB,2}}

        # test Default Wrapper getUnitcell(...)
        id = :squareoctagon
        @test_nowarn getUnitcell(id);
        @test_nowarn getUnitcell(id, 1);
        @test_nowarn getUnitcell(id, Symbol);
        @test_nowarn getUnitcell(id, Symbol, 1);
        @test_nowarn getUnitcell(id, Int64, Symbol);
        @test_nowarn getUnitcell(id, Int64, Symbol, 1);

        # Test Wrapper with different label types
        @test_nowarn getUnitcellSquareOctagon(String);
        @test_nowarn getUnitcellSquareOctagon(Symbol);
        @test_nowarn getUnitcellSquareOctagon(Int64, Symbol);

        # Test Wrapper with different label types and specific version
        @test_nowarn getUnitcellSquareOctagon(1);
        @test_nowarn getUnitcellSquareOctagon(String, 1);
        @test_nowarn getUnitcellSquareOctagon(String, Symbol, 1);

        # Test Wrapper with different label types and specific version
        @test_nowarn getUnitcellSquareOctagon(2);
        @test_nowarn getUnitcellSquareOctagon(String, 2);
        @test_nowarn getUnitcellSquareOctagon(String, Symbol, 2);

        # Test Wrapper with different label types and specific version
        @test_nowarn getUnitcellSquareOctagon(4);
        @test_nowarn getUnitcellSquareOctagon(String, 4);
        @test_nowarn getUnitcellSquareOctagon(String, Symbol, 4);

        # test that there are enough Kitaev bonds
        @test length(unique(label.(bonds(getUnitcellSquareOctagon(4))))) == 3

        # Test Wrapper with different label types and specific version
        @test_nowarn getUnitcellSquareOctagon(5);
        @test_nowarn getUnitcellSquareOctagon(String, 5);
        @test_nowarn getUnitcellSquareOctagon(String, Symbol, 5);

        # test that there are enough Kitaev bonds
        @test length(unique(label.(bonds(getUnitcellSquareOctagon(5))))) == 3

    end


end
