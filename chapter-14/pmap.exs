defmodule Parallel do
  # WorkingWithMultipleProcesses - 6
  
  def pmap(collection, fun) do
    me = self
    collection
    |> Enum.map(fn (elem) ->
         # 子のコンテキスト内で親Pidを利用する場合は、別の変数にキャプチャする必要がある
         spawn_link fn -> (send me, { self, fun.(elem) }) end
       end)
    |> Enum.map(fn (pid) ->
         receive do { ^pid, result } -> result end
        end)
  end
end
