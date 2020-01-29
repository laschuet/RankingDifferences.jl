"""
    AbstractClustering

Supertype for rankings.
"""
abstract type AbstractRanking end

"""
    Ranking{Ts<:Real} <: AbstractRanking

Ranking.
"""
struct Ranking{Ts<:Real} <: AbstractRanking
    S::Matrix{Ts}
    q::Int
    r::Vector{Int}

    function Ranking{Ts}(S::Matrix{Ts}, q::Integer, r::Vector{Int}) where {Ts<:Real}
        return new(S, q, r)
    end
end
Ranking(S::Matrix{Ts}, q::Integer, r::Vector{Int}) where {Ts} =
    Ranking{Ts}(S, q, r)
