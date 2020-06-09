"""
    AbstractRanking

Supertype for rankings.
"""
abstract type AbstractRanking end

"""
    Ranking{Ts<:Real} <: AbstractRanking

Ranking.
"""
struct Ranking{Ts<:Real} <: AbstractRanking
    e::Set{Int}
    q::Set{Int}
    S::Matrix{Ts}
    rl::Vector{Int}
    rs::Vector{Ts}

    function Ranking{Ts}(e::Set{Int}, q::Set{Int}, S::Matrix{Ts},
                        rl::Vector{Int}, rs::Vector{Ts}) where {Ts<:Real}
        return new(e, q, S, rl, rs)
    end
end
Ranking(e::Set{Int}, q::Set{Int}, S::Matrix{Ts}, rl::Vector{Int},
        rs::Vector{Ts}) where {Ts} =
    Ranking{Ts}(e, q, S, rl, rs)