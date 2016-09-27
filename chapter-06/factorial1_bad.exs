defmodule Factorial do
  # 階乗：n! は 1 から n までの整数を全てかけあわせたもの
  #      0! = 1
  def of(n), do: n * of(n-1)
  def of(0), do: 1
end

