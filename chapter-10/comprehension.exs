# リスト内包表記は3つの部品，生成器，フィルタ，収集品からできている
# result = for generator or filter... [, into: value ], do: expression

for n <- [1, 2, 3, 4], do: n * n
# n <- [1, 2, 3, 4]が生成器

# ジェネレータ(generator)は、コレクションから値を展開する方法を指定する。
# pattern <- enumerable_thing

iex(13)> for x <- [1,2], y <- [5, 6], do: x * y
for x <- [1,2], y <- [5, 6], do: x * y
[5, 6, 10, 12]

iex(16)> min_maxes = [{1,4}, {2,3}, {10, 15}]
min_maxes = [{1,4}, {2,3}, {10, 15}]
[{1, 4}, {2, 3}, {10, 15}]

iex(19)> for {min, max} <- min_maxes, n <- min..max, do: n
for {min, max} <- min_maxes, n <- min..max, do: n
[1, 2, 3, 4, 2, 3, 10, 11, 12, 13, 14, 15]

iex(23)> for << ch <- "hello" >>, do: ch
for << ch <- "hello" >>, do: ch
'hello'
iex(24)> for << ch <- "hello" >>, do: <<ch>>
for << ch <- "hello" >>, do: <<ch>>
["h", "e", "l", "l", "o"]

