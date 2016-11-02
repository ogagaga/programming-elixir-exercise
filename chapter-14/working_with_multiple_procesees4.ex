defmodule Exercise4 do
  # spawn_link(Exercise3, :child, [self]) は
  # spawn_link(__MODULE__, :child, [self]) と書いてもよさそう

  # IO.puts で出力している箇所はLoggerに置き換えても良さそう(require Logger)

  import :timer, only: [ sleep: 1 ]

  def run do
    # 親プロセスへメッセージを送信する
    spawn_link(__MODULE__, :child, [self])

    sleep(500)

    receive_messages
  end

  def receive_messages do
    receive do
      msg ->
        IO.puts "MESSAGE RECEIVED: #{inspect msg}"
        receive_messages
    after 500 ->
        # 終了メッセージ
        IO.puts "All messages received."
    end
  end

  def child(pid) do
    send(pid, "I am child process...! ")
    raise RuntimeError
  end
end

Exercise4.run

# bash-3.2$ elixir -r working_with_multiple_procesees4.ex 
# MESSAGE RECEIVED: "I am child process...! "
# All messages received.
# bash-3.2$ elixir -r working_with_multiple_procesees4.ex 
# ** (EXIT from #PID<0.70.0>) an exception was raised:
#     ** (RuntimeError) runtime error
#         working_with_multiple_procesees4.ex:31: Exercise4.child/1

# 14:28:46.362 [error] Process #PID<0.76.0> raised an exception
# ** (RuntimeError) runtime error
#     working_with_multiple_procesees4.ex:31: Exercise4.child/1

