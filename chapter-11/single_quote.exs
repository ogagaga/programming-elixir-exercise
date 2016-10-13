iex(35)> [ 67, 65, 84]
[ 67, 65, 84]
'CAT'
iex(36)> str = 'wombat'
str = 'wombat'
'wombat'
iex(37)> :io.format "~w~n", [str]
:io.format "~w~n", [str]
[119,111,109,98,97,116]
:ok
iex(38)> List.to_tuple str
List.to_tuple str
{119, 111, 109, 98, 97, 116}
iex(39)> str ++ [0]
str ++ [0]
[119, 111, 109, 98, 97, 116, 0]


