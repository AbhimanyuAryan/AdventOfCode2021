# solution 1


input = collect(Iterators.map(i -> (String(i[1]), parse(Int64, i[2])), 
  split.((readlines(joinpath("..", "data", "day02.txt"))), " ")))

function compute(input::Vector{Tuple{String, Int64}})
  dict = Dict{String, Int}()
  for i in input
    if(haskey(dict, i[1]))
      dict[i[1]] += i[2]
    else
      dict[i[1]] = i[2]
    end
  end

  println((dict["down"] - dict["up"]) * dict["forward"])
end

compute(input)