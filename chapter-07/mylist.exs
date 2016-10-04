defmodule MyList do
  # def len([]), do: 0
  # def len([head|tail]), do: 1 + len(tail)

  def len([]), do: 0
  def len([_head | tail]), do: 1 + len(tail)
end
