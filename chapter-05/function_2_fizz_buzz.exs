fizz_buzz = fn
  (0, 0, _) -> "FizzBuzz"
  (0, _, _) -> "Fizz"
  (_, 0, _) -> "Buzz"
  (_, _, z) -> z
end

IO.puts fizz_buzz.(0, 0, 1)
IO.puts fizz_buzz.(0, 1, 1)
IO.puts fizz_buzz.(1, 1, 1)

fizz_buzz_with_rem = fn (n) -> fizz_buzz.(rem(n, 3), rem(n, 5), n) end

IO.puts fizz_buzz_with_rem.(10)
IO.puts fizz_buzz_with_rem.(11)
IO.puts fizz_buzz_with_rem.(12)
IO.puts fizz_buzz_with_rem.(13)
IO.puts fizz_buzz_with_rem.(14)
IO.puts fizz_buzz_with_rem.(15)
IO.puts fizz_buzz_with_rem.(16)
