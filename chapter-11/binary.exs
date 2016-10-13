iex(103)> b = << 1, 2, 3 >>
b = << 1, 2, 3 >>
<<1, 2, 3>>
iex(104)> byte_size b
byte_size b
3
iex(105)> bit_size b
bit_size b
24


iex(106)> b = << 1::size(2), 1::size(3) >>
b = << 1::size(2), 1::size(3) >>
<<9::size(5)>>
iex(107)> byte_size b
byte_size b
1
iex(108)> bit_size b
bit_size b
5

# x :: binary は バイナリ修飾子

iex(115)> mix = << int :: binary, float :: binary >>
mix = << int :: binary, float :: binary >>
<<1, 64, 4, 0, 0, 0, 0, 0, 0>>
iex(118)> << sign::size(1), exp::size(11), mantissa::size(52) >> = << 3.14159::float >>
<< sign::size(1), exp::size(11), mantissa::size(52) >> = << 3.14159::float >>
<<64, 9, 33, 249, 240, 27, 134, 110>>
iex(119)> (1 + mantissa / :math.pow(2, 52)) * :math.pow(2, exp-1023)
(1 + mantissa / :math.pow(2, 52)) * :math.pow(2, exp-1023)
3.14159
