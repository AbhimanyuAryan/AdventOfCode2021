#= 
julia> c = ([1; 2; 3], [4; 5; 6])
julia> hcat(c...)
3×2 Matrix{Int64}:
   1  4
   2  5
   3  6

julia> transpose(hcat(c...))
2×3 transpose(::Matrix{Int64}) with eltype Int64:
 1  2  3
 4  5  6
=#
matrix = transpose(parse.(Int, hcat(collect.(readlines(joinpath("..", "data", "day03.txt")))...)))

#=
1000×12 transpose(::Matrix{Int64}) with eltype Int64:
 0  0  1  0  0  0  0  1  0  1  0  1
 0  1  0  0  1  0  1  1  1  1  1  0
 0  0  1  0  1  0  1  1  0  1  1  1
 ⋮              ⋮              ⋮  
 0  0  0  0  1  0  0  1  0  0  1  1
 1  0  0  1  1  1  1  0  1  1  0  0
 =#

# find max in columns

function findmax()


# first solution

