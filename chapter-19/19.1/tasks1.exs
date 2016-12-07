defmodule Fib do
  def of(0), do: 0
  def of(1), do: 1
  def of(n), do: Fib.of(n-1) + Fib.of(n-2)

# fib(5)
# = fib(4)
# = fib(3)+ fib(3)
# = fib(2)+ fib(2) + fib(2) + fib(1)
# = fib(1)+ fib(1) + fib(1) + fib(0) + fib(1) + fib(0) + fib(1) + fib(0) + fib(1) + fib(1) + fib(0) + fib(1) + fib(0) + fib(1)
end

IO.puts "Start the task"
worker = Task.async(fn -> Fib.of(20) end)
IO.puts "Do something else"

IO.puts "Wait for the task"
result = Task.await(worker)

IO.puts "The result is  #{result}"
