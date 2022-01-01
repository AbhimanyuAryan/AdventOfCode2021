# println(
#   count(i -> i > 0, diff(parse.(Int, split(read(joinpath("..", "data", "day01.txt"), String)))))
# )


# first solution

input = parse.(Int, readlines(joinpath("..", "data", "day01.txt")))

println(
  count(i -> i > 0, diff(input))
)

println("Total Sum: ", 
  sum(1:length(input)-1) do i
    input[i+1] > input[i]
  end
)

# second solution

