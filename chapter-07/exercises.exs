defmodule Exercises do
  def square([]), do: []
  def square([head | tail]), do: [head*head | square(tail)]

  # def add_1([]), do: []
  # def add_1([head | tail]), do: [head+1] | add_1(tail)]

  def map([], _func), do: []
  def map([head | tail], func), do: [func.(head) | map(tail, func)]
  # Exercises.map [1,2,3], fn (n) -> n*n end
  # Exercises.map [1,2,3], &(&1*&1)

  def sum([], total), do: total
  def sum([head | tail], total), do: sum(tail, head+total)
  # Exercises.sum([1,2,3,4,5], 0)

  # def sum(list), do: _sum(list, 0)
  # # プライベート関数
  # defp _sum([], total), do: total
  # defp _sum([ head | tail ], total), do: _sum(tail, head+total)

  def reduce([], value, _) do
    value
  end
  def reduce([head | tail], value, func) do
    reduce(tail, func.(head, value), func)
  end
  # Exercises.reduce([1,2,3,4,5], 0, &(&1 + &2))

  # TODO
  def mapsum(list, func) do
  end

  # TODO
  def max(list) do
    _max_list(list, 0)
  end
end
