defmodule Attendee do
  defstruct name: "", paid: false, over_18: true

  def may_attend_after_party(attendee = %Attendee{}) do
    attendee.paid && attendee.over_18
  end

  def print_vip_badge(%Attendee{name: name}) when name != "" do
    IO.puts "Very cheap badge for #{name}"
  end

  def print_vip_badge(%Attendee{}) do
    raise "missing name for badge"
  end
end

# iex(99)> c "defstruct1.exs"
# c "defstruct1.exs"
# [Attendee]
# iex(100)> a1 = %Attendee{name: "Dave", over_18: true}
# a1 = %Attendee{name: "Dave", over_18: true}
# %Attendee{name: "Dave", over_18: true, paid: false}
# iex(101)> Attendee.may_attend_after_party(a1)
# Attendee.may_attend_after_party(a1)
# false
# iex(102)> a2 = %Attendee{a1 | paid: true}
# a2 = %Attendee{a1 | paid: true}
# %Attendee{name: "Dave", over_18: true, paid: true}
# iex(103)> Attendee.may_attend_after_party(a2)
# Attendee.may_attend_after_party(a2)
# true
# iex(104)> Attendee.print_vip_badge(a2)
# Attendee.print_vip_badge(a2)
# Very cheap badge for Dave
# :ok
# iex(105)> a3 = %Attendee{}
# a3 = %Attendee{}
# %Attendee{name: "", over_18: true, paid: false}
# iex(106)> Attendee.print_vip_badge(a3)
# Attendee.print_vip_badge(a3)
# ** (RuntimeError) missing name for badge
#     defstruct1.exs:13: Attendee.print_vip_badge/1
