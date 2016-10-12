defmodule MyList do

  # Exercise: ListsAndRecursion-4
  #
  # MyList.span(3, 6) # => [3,4,5,6]
  def span(from, to), do: Enum.reverse _span(from, to - from, [from])

  def _span(_from, 0, result), do: result
  def _span(from, len, result), do: [from + len | _span(from, len - 1, result)]

  # see https://github.com/ludo/programming-elixir-exercises/blob/master/lists/my_list.exs
  # Exercise: ListsAndRecursion-7
  #
  # MyList.prime_from_2_to(10)
  # [2,3,5,7]
  def prime_from_2_to(n) do
    range = span(2,n)
    range -- (lc x inlist range, y inlist range, x > y, rem(x,y) == 0, do: x)
  end

end
