defmodule MyList do

  def span(from, to), do: _span(from, to, [])

  defp _span(from, to, list) when from == to do
    list ++ [to]
  end

  defp _span(from, to, list) do
    list ++ [from | _span(from + 1, to, list) ]
  end

  # def span(from, to) when from > to, do: []

  # def span(from, to) do
  #   [ from | span(from+1, to) ]
  # end

  def span(from, to), do: span(from, to, [])
  def span(from, to, list) when from < to, do: span(from + 1, to, list ++ [from])
  def span(from, to, list) when from == to, do: list ++ [from]
end

# MyList.span(from, to)
