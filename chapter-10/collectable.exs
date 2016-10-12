Enum.to_list 1..5
# [1, 2, 3, 4, 5]

Enum.into 1..5, []
# [1, 2, 3, 4, 5]

Enum.into IO.stream(:stdio, :line), IO.stream(:stdio, :line)
