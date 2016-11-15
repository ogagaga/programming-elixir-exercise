defmodule Stack.Server do
  use GenServer

  def handle_call(:pop, _from, state) do
    [item | tail] = state
    {:reply, item, tail}
  end
end

# bash-3.2$ iex -S mix
# Erlang/OTP 19 [erts-8.1] [source] [64-bit] [smp:4:4] [async-threads:10] [hipe] [kernel-poll:false] [dtrace]

# Compiling 2 files (.ex)
# Generated stack app
# Interactive Elixir (1.3.4) - press Ctrl+C to exit (type h() ENTER for help)
# iex(1)> {:ok, pid} = GenServer.start_link(Stack.Server, [5, "cat", 9])
# {:ok, #PID<0.145.0>}
# iex(2)> 
# nil
# iex(3)> 
# nil
# iex(4)> GenServer.call(pid, :pop)
# 5
# iex(5)> GenServer.call(pid, :pop)
# "cat"
# iex(6)> GenServer.call(pid, :pop)
# 9
# iex(7)> GenServer.call(pid, :pop)
# ** (EXIT from #PID<0.143.0>) an exception was raised:
#     ** (MatchError) no match of right hand side value: []
#         (stack) lib/stack/server.ex:9: Stack.Server.handle_call/3
#         (stdlib) gen_server.erl:615: :gen_server.try_handle_call/4
#         (stdlib) gen_server.erl:647: :gen_server.handle_msg/5
#         (stdlib) proc_lib.erl:247: :proc_lib.init_p_do_apply/3
