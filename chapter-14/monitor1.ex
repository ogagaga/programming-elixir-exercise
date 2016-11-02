defmodule Monitor1 do
  # もし、一つのプロセスが失敗すれば、別のプロセスも終了するべきなら、
  # リンクが必要。そうではなく、何かの理由でプロセスの終了を知りたいのなら、
  # モニタを使う。

  import :timer, only: [ sleep: 1]

  def sad_function do
    sleep 500
    exit(:boom)
  end

  def run do
    res = spawn_monitor(Monitor1, :sad_function, [])
    IO.puts inspect res
    receive do
      msg ->
        IO.puts "MESSAGE RECEIVED: #{inspect msg}"
    after 1000 ->
        IO.puts "Nothing happned as far as I am concerned"
    end
  end
end

Monitor1.run
