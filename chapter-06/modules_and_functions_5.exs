defmodule Divisor do
  # ユークリッドの互除法は「x≥y のとき gcd(x,y) と gcd(y,xをyで割った余り) は等しい」という定理
  def gcd(x, 0), do: x
  def gcd(x, y), do: gcd(y, rem(x, y))
end
