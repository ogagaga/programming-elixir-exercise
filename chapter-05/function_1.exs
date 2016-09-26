list_concat = fn (list_1, list_2) -> list_1 ++ list_2 end
IO.puts list_concat.([:a, :b], [:c, :d])

sum = fn (a, b, c) -> a + b + c end
IO.puts sum.(1, 2, 3)

# TODO pair_tuple_to_list

