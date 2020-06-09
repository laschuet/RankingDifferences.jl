@testset "ranking" begin
    e = Set([1, 2, 4])
    q = Set([1])
    S = [1 0 0.5; 0 1 0.5; 0.5 0.5 1]
    rl = [3, 2]
    rs = [3.0, 2]
    r = Ranking(e, q, S, rl, rs)

    @testset "constructors" begin
        @test isa(r, Ranking)
        @test r.e == e && r.q == q && r.S == S && r.rl == rl && r.rs == rs
    end
end