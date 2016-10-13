defmodule Printable do
  def printable?(char_list) do
    Enum.all?(char_list, fn ch ->
      ch >=32 and ch <= 126
    end)

    # Enum.all?(char_list, fn(c) -> c in ?\s..?~ end)
  end
end
