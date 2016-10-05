defmodule Subscriber do
  defstruct name: "", paid: false, over_18: true
end

# iex(82)> s1 = %Subscriber{}
# s1 = %Subscriber{}
# %Subscriber{name: "", over_18: true, paid: false}
# iex(84)> s2 = %Subscriber{ name: "Dave" }
# s2 = %Subscriber{ name: "Dave" }
# %Subscriber{name: "Dave", over_18: true, paid: false}
# iex(85)> s3 = %Subscriber{ name: "Mary", paid: true }
# s3 = %Subscriber{ name: "Mary", paid: true }
# %Subscriber{name: "Mary", over_18: true, paid: true}
# iex(86)> s3.name
# s3.name
# "Mary"
# iex(89)> %Subscriber{name: a_name} = s3
# %Subscriber{name: a_name} = s3
# %Subscriber{name: "Mary", over_18: true, paid: true}
# iex(90)> a_name
# a_name
# "Mary"
# iex(91)> s4 = %Subscriber{ s3 | name: "Marie"}
# s4 = %Subscriber{ s3 | name: "Marie"}
# %Subscriber{name: "Marie", over_18: true, paid: true}
