defmodule Exercise5 do
  import :timer, only: [ sleep: 1 ]

  def run do
    # 親プロセスへメッセージを送信する
    spawn_monitor(Exercise5, :child, [self])

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
  end
end

Exercise5.run
