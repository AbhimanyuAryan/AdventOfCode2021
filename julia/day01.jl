# println(
#   count(i -> i > 0, diff(parse.(Int, split(read(joinpath("..", "data", "day01.txt"), String)))))
# )


# first solution

input = parse.(Int, readlines(joinpath("..", "data", "day01.txt")))

println(
  count(i -> i > 0, diff(input))
)

# second solution

println(sum(1:length(input)-3) do i
  sum(input[i: i+3]) > sum(input[i: i+2])
end )