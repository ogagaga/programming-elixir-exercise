iex(1)> { :ok, count } = Agent.start(fn -> 0 end) 
{:ok, #PID<0.82.0>}
iex(2)> Agent.get(count, &(&1))
0
iex(3)> Agent.update(count, &(&1 +1))
:ok
iex(4)> Agent.update(count, &(&1 +1))
:ok
iex(5)> Agent.get(count, &(&1))
2


# Add name for agent
iex(9)> Agent.start(fn -> 1 end, name: Sum)
{:ok, #PID<0.91.0>}
iex(10)> Agent.get(Sum, &(&1))
1
iex(11)> Agent.update(Sum, &(&1+99))
:ok
iex(12)> Agent.get(Sum, &(&1))
100
