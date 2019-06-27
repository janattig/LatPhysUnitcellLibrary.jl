# TESTS FOR ALL 3D UNITCELLS
@testset "3D Unitcells" begin

    #----------------------
    #   CUBIC
    #----------------------
    @testset "Cubic" begin

        # test Default Wrapper
        @test_nowarn getUnitcellCubic();
        @test_nowarn getUnitcellSC();

        # Test the unitcell has the correct subtype
        @test typeof(getUnitcellCubic()) <: AbstractUnitcell{S,B} where {LS,S<:AbstractSite{LS,3}, LB,B<:AbstractBond{LB,3}}
        @test typeof(getUnitcellSC()) <: AbstractUnitcell{S,B} where {LS,S<:AbstractSite{LS,3}, LB,B<:AbstractBond{LB,3}}

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
        @test_nowarn getUnitcellSC(String);
        @test_nowarn getUnitcellSC(Symbol);
        @test_nowarn getUnitcellSC(Int64, Symbol);

        # Test Wrapper with different label types and specific version
        @test_nowarn getUnitcellCubic(1);
        @test_nowarn getUnitcellCubic(String, 1);
        @test_nowarn getUnitcellCubic(String, Symbol, 1);
        @test_nowarn getUnitcellSC(1);
        @test_nowarn getUnitcellSC(String, 1);
        @test_nowarn getUnitcellSC(String, Symbol, 1);

    end



    #----------------------
    #   DIAMOND
    #----------------------
    @testset "Diamond" begin

        # test Default Wrapper
        @test_nowarn getUnitcellDiamond();

        # Test the unitcell has the correct subtype
        @test typeof(getUnitcellDiamond()) <: AbstractUnitcell{S,B} where {LS,S<:AbstractSite{LS,3}, LB,B<:AbstractBond{LB,3}}

        # test Default Wrapper getUnitcell(...)
        id = :diamond
        @test_nowarn getUnitcell(id);
        @test_nowarn getUnitcell(id, 1);
        @test_nowarn getUnitcell(id, Symbol);
        @test_nowarn getUnitcell(id, Symbol, 1);
        @test_nowarn getUnitcell(id, Int64, Symbol);
        @test_nowarn getUnitcell(id, Int64, Symbol, 1);

        # Test Wrapper with different label types
        @test_nowarn getUnitcellDiamond(String);
        @test_nowarn getUnitcellDiamond(Symbol);
        @test_nowarn getUnitcellDiamond(Int64, Symbol);

        # Test Wrapper with different label types and specific version
        @test_nowarn getUnitcellDiamond(1);
        @test_nowarn getUnitcellDiamond(String, 1);
        @test_nowarn getUnitcellDiamond(String, Symbol, 1);

        # Test Wrapper with different label types and specific version
        @test_nowarn getUnitcellDiamond(2);
        @test_nowarn getUnitcellDiamond(String, 2);
        @test_nowarn getUnitcellDiamond(String, Symbol, 2);

    end



    #----------------------
    #   FCC
    #----------------------
    @testset "FCC" begin

        # test Default Wrapper
        @test_nowarn getUnitcellFCC();

        # Test the unitcell has the correct subtype
        @test typeof(getUnitcellFCC()) <: AbstractUnitcell{S,B} where {LS,S<:AbstractSite{LS,3}, LB,B<:AbstractBond{LB,3}}

        # test Default Wrapper getUnitcell(...)
        id = :fcc
        @test_nowarn getUnitcell(id);
        @test_nowarn getUnitcell(id, 1);
        @test_nowarn getUnitcell(id, Symbol);
        @test_nowarn getUnitcell(id, Symbol, 1);
        @test_nowarn getUnitcell(id, Int64, Symbol);
        @test_nowarn getUnitcell(id, Int64, Symbol, 1);

        # Test Wrapper with different label types
        @test_nowarn getUnitcellFCC(String);
        @test_nowarn getUnitcellFCC(Symbol);
        @test_nowarn getUnitcellFCC(Int64, Symbol);

        # Test Wrapper with different label types and specific version
        @test_nowarn getUnitcellFCC(1);
        @test_nowarn getUnitcellFCC(String, 1);
        @test_nowarn getUnitcellFCC(String, Symbol, 1);

        # Test Wrapper with different label types and specific version
        @test_nowarn getUnitcellFCC(2);
        @test_nowarn getUnitcellFCC(String, 2);
        @test_nowarn getUnitcellFCC(String, Symbol, 2);

        # Test Wrapper with different label types and specific version
        @test_nowarn getUnitcellFCC(4);
        @test_nowarn getUnitcellFCC(String, 4);
        @test_nowarn getUnitcellFCC(String, Symbol, 4);

        # test that there are enough Kitaev bonds
        @test length(unique(label.(bonds(getUnitcellFCC(4))))) == 3

        # Test Wrapper with different label types and specific version
        @test_nowarn getUnitcellFCC(5);
        @test_nowarn getUnitcellFCC(String, 5);
        @test_nowarn getUnitcellFCC(String, Symbol, 5);

    end



    #----------------------
    #   PYROCHLORE
    #----------------------
    @testset "Pyrochlore" begin

        # test Default Wrapper
        @test_nowarn getUnitcellPyrochlore();

        # Test the unitcell has the correct subtype
        @test typeof(getUnitcellPyrochlore()) <: AbstractUnitcell{S,B} where {LS,S<:AbstractSite{LS,3}, LB,B<:AbstractBond{LB,3}}

        # test Default Wrapper getUnitcell(...)
        id = :pyrochlore
        @test_nowarn getUnitcell(id);
        @test_nowarn getUnitcell(id, 1);
        @test_nowarn getUnitcell(id, Symbol);
        @test_nowarn getUnitcell(id, Symbol, 1);
        @test_nowarn getUnitcell(id, Int64, Symbol);
        @test_nowarn getUnitcell(id, Int64, Symbol, 1);

        # Test Wrapper with different label types
        @test_nowarn getUnitcellPyrochlore(String);
        @test_nowarn getUnitcellPyrochlore(Symbol);
        @test_nowarn getUnitcellPyrochlore(Int64, Symbol);

        # Test Wrapper with different label types and specific version
        @test_nowarn getUnitcellPyrochlore(1);
        @test_nowarn getUnitcellPyrochlore(String, 1);
        @test_nowarn getUnitcellPyrochlore(String, Symbol, 1);

        # Test Wrapper with different label types and specific version
        @test_nowarn getUnitcellPyrochlore(2);
        @test_nowarn getUnitcellPyrochlore(String, 2);
        @test_nowarn getUnitcellPyrochlore(String, Symbol, 2);

    end



    #----------------------
    #   HYPERKAGOME
    #----------------------
    @testset "Hyperkagome" begin

        # test Default Wrapper
        @test_nowarn getUnitcellHyperkagome();

        # Test the unitcell has the correct subtype
        @test typeof(getUnitcellHyperkagome()) <: AbstractUnitcell{S,B} where {LS,S<:AbstractSite{LS,3}, LB,B<:AbstractBond{LB,3}}

        # test Default Wrapper getUnitcell(...)
        id = :pyrochlore
        @test_nowarn getUnitcell(id);
        @test_nowarn getUnitcell(id, 1);
        @test_nowarn getUnitcell(id, Symbol);
        @test_nowarn getUnitcell(id, Symbol, 1);
        @test_nowarn getUnitcell(id, Int64, Symbol);
        @test_nowarn getUnitcell(id, Int64, Symbol, 1);

        # Test Wrapper with different label types
        @test_nowarn getUnitcellHyperkagome(String);
        @test_nowarn getUnitcellHyperkagome(Symbol);
        @test_nowarn getUnitcellHyperkagome(Int64, Symbol);

        # Test Wrapper with different label types and specific version
        @test_nowarn getUnitcellHyperkagome(1);
        @test_nowarn getUnitcellHyperkagome(String, 1);
        @test_nowarn getUnitcellHyperkagome(String, Symbol, 1);

    end



    #----------------------
    #   (8,3)a
    #----------------------
    @testset "(8,3)a" begin

        # test Default Wrapper
        @test_nowarn getUnitcell_8_3_a();

        # Test the unitcell has the correct subtype
        @test typeof(getUnitcell_8_3_a()) <: AbstractUnitcell{S,B} where {LS,S<:AbstractSite{LS,3}, LB,B<:AbstractBond{LB,3}}

        # Test Wrapper with different label types
        @test_nowarn getUnitcell_8_3_a(String);
        @test_nowarn getUnitcell_8_3_a(Symbol);
        @test_nowarn getUnitcell_8_3_a(Int64, Symbol);

        # Test Wrapper with different label types and specific version
        @test_nowarn getUnitcell_8_3_a(1);
        @test_nowarn getUnitcell_8_3_a(String, 1);
        @test_nowarn getUnitcell_8_3_a(String, Symbol, 1);

        # Test Wrapper with different label types and specific version
        @test_nowarn getUnitcell_8_3_a(4);
        @test_nowarn getUnitcell_8_3_a(String, 4);
        @test_nowarn getUnitcell_8_3_a(String, Symbol, 4);

        # test that there are enough Kitaev bonds
        @test length(unique(label.(bonds(getUnitcell_8_3_a(4))))) == 3

    end



    #----------------------
    #   (8,3)b
    #----------------------
    @testset "(8,3)b" begin

        # test Default Wrapper
        @test_nowarn getUnitcell_8_3_b();

        # Test the unitcell has the correct subtype
        @test typeof(getUnitcell_8_3_b()) <: AbstractUnitcell{S,B} where {LS,S<:AbstractSite{LS,3}, LB,B<:AbstractBond{LB,3}}

        # Test Wrapper with different label types
        @test_nowarn getUnitcell_8_3_b(String);
        @test_nowarn getUnitcell_8_3_b(Symbol);
        @test_nowarn getUnitcell_8_3_b(Int64, Symbol);

        # Test Wrapper with different label types and specific version
        @test_nowarn getUnitcell_8_3_b(1);
        @test_nowarn getUnitcell_8_3_b(String, 1);
        @test_nowarn getUnitcell_8_3_b(String, Symbol, 1);

        # Test Wrapper with different label types and specific version
        @test_nowarn getUnitcell_8_3_b(4);
        @test_nowarn getUnitcell_8_3_b(String, 4);
        @test_nowarn getUnitcell_8_3_b(String, Symbol, 4);

        # test that there are enough Kitaev bonds
        @test length(unique(label.(bonds(getUnitcell_8_3_b(4))))) == 3

    end



    #----------------------
    #   (8,3)c
    #----------------------
    @testset "(8,3)c" begin

        # test Default Wrapper
        @test_nowarn getUnitcell_8_3_c();

        # Test the unitcell has the correct subtype
        @test typeof(getUnitcell_8_3_c()) <: AbstractUnitcell{S,B} where {LS,S<:AbstractSite{LS,3}, LB,B<:AbstractBond{LB,3}}

        # Test Wrapper with different label types
        @test_nowarn getUnitcell_8_3_c(String);
        @test_nowarn getUnitcell_8_3_c(Symbol);
        @test_nowarn getUnitcell_8_3_c(Int64, Symbol);

        # Test Wrapper with different label types and specific version
        @test_nowarn getUnitcell_8_3_c(1);
        @test_nowarn getUnitcell_8_3_c(String, 1);
        @test_nowarn getUnitcell_8_3_c(String, Symbol, 1);

        # Test Wrapper with different label types and specific version
        @test_nowarn getUnitcell_8_3_c(4);
        @test_nowarn getUnitcell_8_3_c(String, 4);
        @test_nowarn getUnitcell_8_3_c(String, Symbol, 4);

        # test that there are enough Kitaev bonds
        @test length(unique(label.(bonds(getUnitcell_8_3_c(4))))) == 3

    end



    #----------------------
    #   (8,3)n
    #----------------------
    @testset "(8,3)n" begin

        # test Default Wrapper
        @test_nowarn getUnitcell_8_3_n();

        # Test the unitcell has the correct subtype
        @test typeof(getUnitcell_8_3_n()) <: AbstractUnitcell{S,B} where {LS,S<:AbstractSite{LS,3}, LB,B<:AbstractBond{LB,3}}

        # Test Wrapper with different label types
        @test_nowarn getUnitcell_8_3_n(String);
        @test_nowarn getUnitcell_8_3_n(Symbol);
        @test_nowarn getUnitcell_8_3_n(Int64, Symbol);

        # Test Wrapper with different label types and specific version
        @test_nowarn getUnitcell_8_3_n(1);
        @test_nowarn getUnitcell_8_3_n(String, 1);
        @test_nowarn getUnitcell_8_3_n(String, Symbol, 1);

        # Test Wrapper with different label types and specific version
        @test_nowarn getUnitcell_8_3_n(4);
        @test_nowarn getUnitcell_8_3_n(String, 4);
        @test_nowarn getUnitcell_8_3_n(String, Symbol, 4);

        # test that there are enough Kitaev bonds
        @test length(unique(label.(bonds(getUnitcell_8_3_n(4))))) == 3

    end



    #----------------------
    #   (9,3)a
    #----------------------
    @testset "(9,3)a" begin

        # test Default Wrapper
        @test_nowarn getUnitcell_9_3_a();

        # Test the unitcell has the correct subtype
        @test typeof(getUnitcell_9_3_a()) <: AbstractUnitcell{S,B} where {LS,S<:AbstractSite{LS,3}, LB,B<:AbstractBond{LB,3}}

        # Test Wrapper with different label types
        @test_nowarn getUnitcell_9_3_a(String);
        @test_nowarn getUnitcell_9_3_a(Symbol);
        @test_nowarn getUnitcell_9_3_a(Int64, Symbol);

        # Test Wrapper with different label types and specific version
        @test_nowarn getUnitcell_9_3_a(1);
        @test_nowarn getUnitcell_9_3_a(String, 1);
        @test_nowarn getUnitcell_9_3_a(String, Symbol, 1);

        # Test Wrapper with different label types and specific version
        @test_nowarn getUnitcell_9_3_a(2);
        @test_nowarn getUnitcell_9_3_a(String, 2);
        @test_nowarn getUnitcell_9_3_a(String, Symbol, 2);

        # Test Wrapper with different label types and specific version
        @test_nowarn getUnitcell_9_3_a(4);
        @test_nowarn getUnitcell_9_3_a(String, 4);
        @test_nowarn getUnitcell_9_3_a(String, Symbol, 4);

        # test that there are enough Kitaev bonds
        @test length(unique(label.(bonds(getUnitcell_9_3_a(4))))) == 3

        # Test Wrapper with different label types and specific version
        @test_nowarn getUnitcell_9_3_a(5);
        @test_nowarn getUnitcell_9_3_a(String, 5);
        @test_nowarn getUnitcell_9_3_a(String, Symbol, 5);

        # test that there are enough Kitaev bonds
        @test length(unique(label.(bonds(getUnitcell_9_3_a(5))))) == 3

    end



    #----------------------
    #   (10,3)a
    #----------------------
    @testset "(10,3)a" begin

        # test Default Wrapper
        @test_nowarn getUnitcell_10_3_a();
        @test_nowarn getUnitcellHyperoctagon();

        # Test the unitcell has the correct subtype
        @test typeof(getUnitcell_10_3_a()) <: AbstractUnitcell{S,B} where {LS,S<:AbstractSite{LS,3}, LB,B<:AbstractBond{LB,3}}
        @test typeof(getUnitcellHyperoctagon()) <: AbstractUnitcell{S,B} where {LS,S<:AbstractSite{LS,3}, LB,B<:AbstractBond{LB,3}}

        # Test Wrapper with different label types
        @test_nowarn getUnitcell_10_3_a(String);
        @test_nowarn getUnitcell_10_3_a(Symbol);
        @test_nowarn getUnitcell_10_3_a(Int64, Symbol);
        @test_nowarn getUnitcellHyperoctagon(String);
        @test_nowarn getUnitcellHyperoctagon(Symbol);
        @test_nowarn getUnitcellHyperoctagon(Int64, Symbol);

        # Test Wrapper with different label types and specific version
        @test_nowarn getUnitcell_10_3_a(1);
        @test_nowarn getUnitcell_10_3_a(String, 1);
        @test_nowarn getUnitcell_10_3_a(String, Symbol, 1);
        @test_nowarn getUnitcellHyperoctagon(1);
        @test_nowarn getUnitcellHyperoctagon(String, 1);
        @test_nowarn getUnitcellHyperoctagon(String, Symbol, 1);

        # Test Wrapper with different label types and specific version
        @test_nowarn getUnitcell_10_3_a(4);
        @test_nowarn getUnitcell_10_3_a(String, 4);
        @test_nowarn getUnitcell_10_3_a(String, Symbol, 4);
        @test_nowarn getUnitcellHyperoctagon(4);
        @test_nowarn getUnitcellHyperoctagon(String, 4);
        @test_nowarn getUnitcellHyperoctagon(String, Symbol, 4);

        # test that there are enough Kitaev bonds
        @test length(unique(label.(bonds(getUnitcell_10_3_a(4))))) == 3
        @test length(unique(label.(bonds(getUnitcellHyperoctagon(4))))) == 3

    end



    #----------------------
    #   (10,3)b
    #----------------------
    @testset "(10,3)b" begin

        # test Default Wrapper
        @test_nowarn getUnitcell_10_3_b();
        @test_nowarn getUnitcellHyperhoneycomb();

        # Test the unitcell has the correct subtype
        @test typeof(getUnitcell_10_3_b()) <: AbstractUnitcell{S,B} where {LS,S<:AbstractSite{LS,3}, LB,B<:AbstractBond{LB,3}}
        @test typeof(getUnitcellHyperhoneycomb()) <: AbstractUnitcell{S,B} where {LS,S<:AbstractSite{LS,3}, LB,B<:AbstractBond{LB,3}}

        # Test Wrapper with different label types
        @test_nowarn getUnitcell_10_3_b(String);
        @test_nowarn getUnitcell_10_3_b(Symbol);
        @test_nowarn getUnitcell_10_3_b(Int64, Symbol);
        @test_nowarn getUnitcellHyperhoneycomb(String);
        @test_nowarn getUnitcellHyperhoneycomb(Symbol);
        @test_nowarn getUnitcellHyperhoneycomb(Int64, Symbol);

        # Test Wrapper with different label types and specific version
        @test_nowarn getUnitcell_10_3_b(1);
        @test_nowarn getUnitcell_10_3_b(String, 1);
        @test_nowarn getUnitcell_10_3_b(String, Symbol, 1);
        @test_nowarn getUnitcellHyperhoneycomb(1);
        @test_nowarn getUnitcellHyperhoneycomb(String, 1);
        @test_nowarn getUnitcellHyperhoneycomb(String, Symbol, 1);

        # Test Wrapper with different label types and specific version
        @test_nowarn getUnitcell_10_3_b(2);
        @test_nowarn getUnitcell_10_3_b(String, 2);
        @test_nowarn getUnitcell_10_3_b(String, Symbol, 2);
        @test_nowarn getUnitcellHyperhoneycomb(2);
        @test_nowarn getUnitcellHyperhoneycomb(String, 2);
        @test_nowarn getUnitcellHyperhoneycomb(String, Symbol, 2);

        # Test Wrapper with different label types and specific version
        @test_nowarn getUnitcell_10_3_b(4);
        @test_nowarn getUnitcell_10_3_b(String, 4);
        @test_nowarn getUnitcell_10_3_b(String, Symbol, 4);
        @test_nowarn getUnitcellHyperhoneycomb(4);
        @test_nowarn getUnitcellHyperhoneycomb(String, 4);
        @test_nowarn getUnitcellHyperhoneycomb(String, Symbol, 4);

        # test that there are enough Kitaev bonds
        @test length(unique(label.(bonds(getUnitcell_10_3_b(4))))) == 3
        @test length(unique(label.(bonds(getUnitcellHyperhoneycomb(4))))) == 3

        # Test Wrapper with different label types and specific version
        @test_nowarn getUnitcell_10_3_b(5);
        @test_nowarn getUnitcell_10_3_b(String, 5);
        @test_nowarn getUnitcell_10_3_b(String, Symbol, 5);
        @test_nowarn getUnitcellHyperhoneycomb(5);
        @test_nowarn getUnitcellHyperhoneycomb(String, 5);
        @test_nowarn getUnitcellHyperhoneycomb(String, Symbol, 5);

        # test that there are enough Kitaev bonds
        @test length(unique(label.(bonds(getUnitcell_10_3_b(5))))) == 3
        @test length(unique(label.(bonds(getUnitcellHyperhoneycomb(5))))) == 3

    end



    #----------------------
    #   (10,3)c
    #----------------------
    @testset "(10,3)c" begin

        # test Default Wrapper
        @test_nowarn getUnitcell_10_3_c();

        # Test the unitcell has the correct subtype
        @test typeof(getUnitcell_10_3_c()) <: AbstractUnitcell{S,B} where {LS,S<:AbstractSite{LS,3}, LB,B<:AbstractBond{LB,3}}

        # Test Wrapper with different label types
        @test_nowarn getUnitcell_10_3_c(String);
        @test_nowarn getUnitcell_10_3_c(Symbol);
        @test_nowarn getUnitcell_10_3_c(Int64, Symbol);

        # Test Wrapper with different label types and specific version
        @test_nowarn getUnitcell_10_3_c(1);
        @test_nowarn getUnitcell_10_3_c(String, 1);
        @test_nowarn getUnitcell_10_3_c(String, Symbol, 1);

        # Test Wrapper with different label types and specific version
        @test_nowarn getUnitcell_10_3_c(4);
        @test_nowarn getUnitcell_10_3_c(String, 4);
        @test_nowarn getUnitcell_10_3_c(String, Symbol, 4);

        # test that there are enough Kitaev bonds
        @test length(unique(label.(bonds(getUnitcell_10_3_c(4))))) == 3

    end



    #----------------------
    #   (10,3)d
    #----------------------
    @testset "(10,3)d" begin

        # test Default Wrapper
        @test_nowarn getUnitcell_10_3_d();

        # Test the unitcell has the correct subtype
        @test typeof(getUnitcell_10_3_d()) <: AbstractUnitcell{S,B} where {LS,S<:AbstractSite{LS,3}, LB,B<:AbstractBond{LB,3}}

        # Test Wrapper with different label types
        @test_nowarn getUnitcell_10_3_d(String);
        @test_nowarn getUnitcell_10_3_d(Symbol);
        @test_nowarn getUnitcell_10_3_d(Int64, Symbol);

        # Test Wrapper with different label types and specific version
        @test_nowarn getUnitcell_10_3_d(1);
        @test_nowarn getUnitcell_10_3_d(String, 1);
        @test_nowarn getUnitcell_10_3_d(String, Symbol, 1);

        # Test Wrapper with different label types and specific version
        @test_nowarn getUnitcell_10_3_d(4);
        @test_nowarn getUnitcell_10_3_d(String, 4);
        @test_nowarn getUnitcell_10_3_d(String, Symbol, 4);

        # test that there are enough Kitaev bonds
        @test length(unique(label.(bonds(getUnitcell_10_3_d(4))))) == 3

    end

end
