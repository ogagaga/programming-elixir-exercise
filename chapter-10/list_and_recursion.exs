defmodule ListAndRecursion do
  # Enum.all?(list, &(&1 < 4))
  def all?([], _), do: true
  def all?([head|tail], func) do
    if func.(head) do
      all?(tail, func)
    else
      false
    end
  end

  def flatten(list) do
    IO.puts "flatten(list)"
    _flatten(list, [])
  end
  defp _flatten([], reverse_list) do
    IO.puts "_flatten([])"
    Enum.reverse(reverse_list)
  end
  defp _flatten([head | tail], reverse_list) do
    if is_list(head) do
      IO.puts "--This is list-- #{inspect(head)}"
      _flatten(head ++ tail, reverse_list)
    else
      IO.puts "--not list-- #{inspect(tail)}"
      _flatten(tail, [head | reverse_list])
    end
  end
end
