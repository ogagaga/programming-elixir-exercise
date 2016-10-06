list = Enum.to_list 1..5

Enum.concat([1,2,3], [4,5,6])
Enum.concat [1,2,3], 'abc'

Enum.map(list, &(&1 * 10))
Enum.map(list, &String.duplicate("*", &1))

Enum.at(10..20, 3)
Enum.at(10..20, 20)
Enum.at(10..20, 20, :no_one_here)

Enum.filter(list, &(&1 > 2))
require Integer
Enum.filter(list, &Integer.is_even/1)
iex(182)> Enum.reject(list, &Integer.is_even/1)
Enum.reject(list, &Integer.is_even/1)
[1, 3, 5]

iex(192)> Enum.sort ["there", "was", "a", "crooked", "man"]
Enum.sort ["there", "was", "a", "crooked", "man"]
["a", "crooked", "man", "there", "was"]

iex(196)> Enum.max ["three", "was", "a", "crooked", "man"]
Enum.max ["three", "was", "a", "crooked", "man"]
"was"

iex(200)> Enum.max_by ["there", "was", "a", "crooked", "man"], &String.length/1
Enum.max_by ["there", "was", "a", "crooked", "man"], &String.length/1
"crooked"



