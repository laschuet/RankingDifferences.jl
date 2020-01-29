@testset "ranking" begin
    @testset "constructors" begin
        S = [1 0 0.5; 0 1 0.5; 0.5 0.5 1]
        q = 1
        res = [3, 2]
        r = Ranking(S, q, res)
        @test isa(r, Ranking)
        @test r.S == S && r.q == q && r.r == res
    end
end
