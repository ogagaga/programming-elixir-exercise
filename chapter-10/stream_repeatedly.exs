Stream.repeatedly(fn -> true end) |> Enum.take(3)

Stream.repeatedly(&:random.uniform/0) |> Enum.take(3)

