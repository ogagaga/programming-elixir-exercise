defmodule Anagram do
  def anagram?(word1, word2) do
    length(word1) === length(word2) and length(word1 -- word2) === 0
  end
end
