defmodule Tax do
  # @see https://github.com/killme2008/programming-elixir-exercises/blob/master/ch10/tax.exs
  @tax_rates [NC: 0.075, TX: 0.08]
  @orders [
    [ id: 123, ship_to: :NC, net_amount: 100.00 ],
    [ id: 124, ship_to: :OK, net_amount:  35.50 ],
    [ id: 125, ship_to: :TX, net_amount:  24.00 ],
    [ id: 126, ship_to: :TX, net_amount:  44.80 ],
    [ id: 127, ship_to: :NC, net_amount:  25.00 ],
    [ id: 128, ship_to: :MA, net_amount:  10.00 ],
    [ id: 129, ship_to: :CA, net_amount: 102.00 ],
    [ id: 120, ship_to: :NC, net_amount:  50.00 ]
  ]

  # TODO
  def tax_rates, do: @tax_rates
  def orders, do: @orders

  def total_amount(rates, orders) do

  
end
