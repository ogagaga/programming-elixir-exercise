iex(142)> dqs = "∂x/∂y"
dqs = "∂x/∂y"
"∂x/∂y"
iex(143)> String.lenght dqs
String.length dqs
5
iex(144)> String.at(dqs, 0)
String.at(dqs, 0)
"∂"
iex(145)> String.codepoints(dqs)
String.codepoints(dqs)
["∂", "x", "/", "∂", "y"]
iex(146)> String.split(dqs, "/")
String.split(dqs, "/")
["∂x", "∂y"]


iex(150)> String.at("∂og", 0)
String.at("∂og", 0)
"∂"
iex(151)> String.at("∂og", -1)
String.at("∂og", -1)
"g"
iex(152)> String.at("∂og", -2)
String.at("∂og", -2)
"o"
iex(153)> String.at("∂og", -3)
String.at("∂og", -3)
"∂"
