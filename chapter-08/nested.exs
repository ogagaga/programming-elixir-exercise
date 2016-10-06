defmodule Customer do
  defstruct name: "", company: ""
end

defmodule BugReport do
  defstruct owner: %Customer{}, details: "", severity: 1
end

# iex(111)> c "nested.exs"
# c "nested.exs"
# [BugReport, Customer]
# iex(112)> report = %BugReport{owner: %Customer{name: "Dave", company: "Pragmatic"}, details: "broken"}
# report = %BugReport{owner: %Customer{name: "Dave", company: "Pragmatic"}, details: "broken"}
# %BugReport{details: "broken",
#  owner: %Customer{company: "Pragmatic", name: "Dave"}, severity: 1}
# iex(114)> report.owner.company
# report.owner.company
# "Pragmatic"

# Updated
# iex(118)> report = %BugReport{report | owner: %Customer{report.owner | company: "PragProg"}}
# report = %BugReport{report | owner: %Customer{report.owner | company: "PragProg"}}
# %BugReport{details: "broken",
#  owner: %Customer{company: "PragProg", name: "Dave"}, severity: 1}

# Use put_in macro
# put_in(report.owner.company, "PragProg")

# Use updated_in macro
# iex(121)> update_in(report.owner.name, &("Mr. " <> &1))
# update_in(report.owner.name, &("Mr. " <> &1))
# %BugReport{details: "broken",
#  owner: %Customer{company: "PragProg", name: "Mr. Dave"}, severity: 1}

