fizz_buzz_with_rem = fn (n) -> fizz_buzz.(rem(n, 3), rem(n, 5), n) end

IO.puts fizz_buzz_with_rem.(10)
IO.puts fizz_buzz_with_rem.(11)
IO.puts fizz_buzz_with_rem.(12)
IO.puts fizz_buzz_with_rem.(13)
IO.puts fizz_buzz_with_rem.(14)
IO.puts fizz_buzz_with_rem.(15)
IO.puts fizz_buzz_with_rem.(16)

