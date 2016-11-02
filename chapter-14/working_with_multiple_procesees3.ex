defmodule Exercise3 do
  # spawn_link(Exercise3, :child, [self]) は
  # spawn_link(__MODULE__, :child, [self]) と書いてもよさそう

  # IO.puts で出力している箇所はLoggerに置き換えても良さそう(require Logger)

  import :timer, only: [ sleep: 1 ]

  def run do
    # 親プロセスへメッセージを送信する
    spawn_link(Exercise3, :child, [self])

    sleep(500)

    receive_messages
  end

  def receive_messages do
    receive do
      msg ->
        IO.puts "MESSAGE RECEIVED: #{inspect msg}"
        receive_messages
    after 0 ->
        # 0秒後に終了(すぐ終了する)
        IO.puts "All messages received."
    end
  end

  def child(pid) do
    send(pid, "I am child process...! ")
  end
end

Exercise3.run
