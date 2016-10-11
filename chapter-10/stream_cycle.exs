Stream.cycle(~w{ green white })
|> Stream.zip(1..5)
|> Enum.map(fn {class, value} -> ~s{<tr class="#{class}"><td>#{value}</td></tr>\n} end)
|> IO.puts

# Stream.cycle(~w{ green white }) |> Stream.zip(1..5) |> Enum.to_list
#[{"green", 1}, {"white", 2}, {"green", 3}, {"white", 4}, {"green", 5}]

