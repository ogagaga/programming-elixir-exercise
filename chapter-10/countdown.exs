defmodule Countdown do
  def sleep(seconds) do
    # メッセージ待ち受け p163
    receive do
      # メッセージがこなかった場合にnilを設定する
      after seconds*1000 -> nil
    end
  end

  def say(text) do
    # spawn は プロセスを立ち上げて、処理を実行させることができる
    # ここでは OS X の say コマンドを実行している
    spawn fn -> :os.cmd('say #{text}') end
  end

  def timer do
    Stream.resource(
      fn ->
        {_h, _m, s} = :erlang.time
        60 - s - 1
      end,

      fn
        0 ->
          {:halt, 0}
        count -> sleep(1)
          { [inspect(count)], count - 1}
      end,

      fn _ -> end
    )
  end
end

      
        
          
      
      
