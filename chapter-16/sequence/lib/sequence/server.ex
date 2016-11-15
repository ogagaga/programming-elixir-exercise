defmodule Sequence.Server do
  use GenServer

  def handle_call(:next_number, _from, current_number) do
    { :reply, current_number, current_number + 1 }
    # :reply という要素は、クライアントへ返答し、二つ目の要素を返すよう、OTP に指示している。
    # 最後に、タプルの 3 番目の要素が次の状態を決定する。
  end

  def handle_call({:set_number, new_number}, _from, _current_number) do
    { :reply, new_number, new_number }
  end

  # 複数の値を返すことも可能
  # def handle_call({:factors, number}, _, _) do
  #   { :reply, { :factors_of, number, factors(number)}, [] }
  # end
end

# bash-3.2$ iex -S mix
# Erlang/OTP 19 [erts-8.1] [source] [64-bit] [smp:4:4] [async-threads:10] [hipe] [kernel-poll:false] [dtrace]

# Compiling 1 file (.ex)
# Generated sequence app
# Interactive Elixir (1.3.4) - press Ctrl+C to exit (type h() ENTER for help)
# iex(1)> 
# nil
# iex(2)> 
# nil
# iex(3)> 
# nil
# iex(4)> { :ok, pid } = GenServer.start_link(Sequence.Server, 100)
# {:ok, #PID<0.123.0>}
# iex(5)> 
# nil
# iex(6)> 
# nil
# iex(7)> GenServer.call(pid, :next_number)
# 100
# iex(8)> GenServer.call(pid, :next_number)
# 101
# iex(9)> GenServer.call(pid, :next_number)
# 102
# iex(10)> GenServer.call(pid, :next_number)
# 103


# iex(2)> { :ok, pid } = GenServer.start_link(Sequence.Server, 100)
# {:ok, #PID<0.120.0>}
# iex(3)> GenServer.call(pid, :next_number)
# 100
# iex(4)> GenServer.call(pid, :next_number)
# 101
# iex(5)> GenServer.call(pid, :next_number)
# 102
# iex(6)> GenServer.call(pid, {:set_number, 999})
# 999
# iex(7)> GenServer.call(pid, :next_number)      
# 999
# iex(8)> GenServer.call(pid, :next_number)      
# 1000
