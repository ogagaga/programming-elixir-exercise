# 8秒くらいかかる。Enumがリストを用意するのに時間がかかる
Enum.map(1..10_000_000, &(&1+1)) |> Enum.take(5)

# 最初の5つだけ取り出して終わる。
Stream.map(1..10_000_000, &(&1+1)) |> Enum.take(5)
