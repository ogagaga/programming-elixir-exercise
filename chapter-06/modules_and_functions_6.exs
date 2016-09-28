defmodule Chop do
  # https://github.com/laurocaetano/programming-elixir-exercises/blob/master/ch-06/chop.exs
  def guess(actual, low..high) do
    first_guess = div(low + high, 2)
    IO.puts "Is it #{first_guess}?"
    make_guess(actual, low..high, first_guess)
  end

  def make_guess(actual, _, current_guess) when actual == current_guess do
    current_guess
    IO.puts "Is it #{current_guess}?"
    IO.puts "Yes, it's #{current_guess}."
  end

  def make_guess(actual, low.._, current_guess) when current_guess > actual do
    next_guess = div(low + (current_guess - 1), 2)
    IO.puts "Is it #{next_guess}?"
    make_guess(actual, low..current_guess, next_guess)
  end

  def make_guess(actual, _..high, current_guess) when current_guess < actual do
    next_guess = div((current_guess + 1) + high, 2)
    IO.puts "Is it #{next_guess}?"
    make_guess(actual, current_guess..high, next_guess)
  end

  # ガード節ありバージョン
  # def guess(actual, low..high) when actual == div(low + high, 2) do
  #   IO.puts "Is it #{actual}?"
  #   IO.puts "Yes, it's #{actual}."
  # end

  # def guess(actual, low..high) when actual < div(low + high, 2) do
  #   IO.puts "Is it #{div(low + high, 2)}? [low : #{low} / high : #{high}] => lower"
  #   # IO.puts "Is it #{div(low + high, 2)}?"
  #   guess(actual, low..div(low + high, 2))
  # end

  # def guess(actual, low..high) when actual > div(low + high, 2) do
  #   IO.puts "Is it #{div(low + high, 2)}? [low : #{low} / high : #{high}] => higher"
  #   # IO.puts "Is it #{div(low + high, 2)}?"
  #   guess(actual, div(low + high, 2)..high)
  # end

  # ガード節なしバージョン
  # def guess(actual, low..high) do
  #   midpoint = low + div(high - low, 2)
  #   IO.puts "-------------------------------------------------------"
  #   IO.puts "Midpoint is #{midpoint} [low : #{low} / high : #{high}]"

  #   cond do
  #     actual < midpoint ->
  #       IO.puts "Is it #{midpoint}? => lower"
  #       guess(actual, low..midpoint)
  #     actual > midpoint ->
  #       IO.puts "Is it #{midpoint}? => higher"
  #       guess(actual, midpoint..high)
  #     actual == midpoint ->
  #       IO.puts "Yes, it's #{actual}."
  #   end
  # end
end
