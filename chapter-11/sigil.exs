iex(8)> ~C[1\n2#{1+2}]
~C[1\n2#{1+2}]
'1\\n2\#{1+2}'
iex(9)> ~c[1\n2#{1+2}]
~c[1\n2#{1+2}]
'1\n23'
iex(10)> ~S[1\n2#{1+2}]
~S[1\n2#{1+2}]
"1\\n2\#{1+2}"
iex(11)> ~s[1\n2#{1+2}]
~s[1\n2#{1+2}]
"1\n23"
iex(12)> ~W[the c#{'a'}t sat on the mat]
~W[the c#{'a'}t sat on the mat]
["the", "c\#{'a'}t", "sat", "on", "the", "mat"]
iex(13)> ~w[the c#{'a'}t sat on the mat]
~w[the c#{'a'}t sat on the mat]
["the", "cat", "sat", "on", "the", "mat"]

# Use option
iex(17)> ~w[the c#{'a'}t sat on the mat]a
~w[the c#{'a'}t sat on the mat]a
[:the, :cat, :sat, :on, :the, :mat]
iex(18)> ~w[the c#{'a'}t sat on the mat]c
~w[the c#{'a'}t sat on the mat]c
['the', 'cat', 'sat', 'on', 'the', 'mat']
iex(19)> ~w[the c#{'a'}t sat on the mat]s
~w[the c#{'a'}t sat on the mat]s
["the", "cat", "sat", "on", "the", "mat"]

iex(24)> ~w"""
~w"""
...(24)> the
the
...(24)> cat
cat
...(24)> sat
sat
...(24)> """
"""
["the", "cat", "sat"]
