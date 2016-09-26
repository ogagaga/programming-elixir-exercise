sum = fn (a, b) -> a + b end
IO.puts sum.(1, 2)

greet = fn -> IO.puts "Hello" end
greet.()

f1 = fn a, b -> a * b end
IO.puts f1.(5, 6)

handle_open = fn
  {:ok, file} -> "First line: #{IO.read(file, :line)}"
  {_, error} -> "Error: #{:file.format_error(error)}"
end

IO.puts handle_open.(File.open("README.md"))
IO.puts handle_open.(File.open("Not_exist_file"))


fun1 = fn -> fn -> "Hello" end end

IO.puts fun1.().()

fun1 = fn -> (fn -> "Hello" end) end
other = fun1.()
other.()


greeter = fn name -> (fn -> "Hello #{name}" end) end
dave_greeter = greeter.("Dave")
dave_greeter.() "Hello Dave"

#defmodule Greeter do
#def for(name, greeting) do fn
#(^name) -> "#{greeting} #{name}"
#(_) -> "I don’t know you"
#end end
#end
#mr_valim = Greeter.for("José", "Oi!") IO.puts mr_valim.("José") # => Oi! José
#IO.puts mr_valim.("dave") # => I don’t know you

# &記法
add_one = &(&1 + 1) # add_one = fn (n) -> n + 1 end と同じ

