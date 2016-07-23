defmodule ShoppingCart do

  def prompt_for_item(items) do
    { price, _ } = IO.gets("Enter the price of item #{length(items) + 1}: ") |> String.rstrip |> Integer.parse
    { qty, _ } = IO.gets("Enter the quantity of item #{length(items) + 1}: ") |> String.rstrip |> Integer.parse
    %{price: price, qty: qty}
  end

  # def line_total(item, acc) do
  #   acc + (item.qty * item.price)
  # end

  def display_totals(items) do
    # We could do this:
    # subtotal = Enum.reduce(items, 0, &ShoppingCart.line_total/2)

    # or this:
    # line_item_total = fn(item, acc) -> acc + (item.qty * item.price) end
    # subtotal = Enum.reduce(items, 0, line_item_total)

    # but this is shortest
    subtotal = Enum.reduce(items, 0, &(&2 + (&1.qty * &1.price)))
    
    IO.puts("-----------------------------")
    IO.puts("Subtotal: #{subtotal}")
    IO.puts("Tax     : #{subtotal * 0.055}")
    IO.puts("Total   : #{subtotal * 1.055}")

  end

end

items = []
items = List.insert_at(items, -1, ShoppingCart.prompt_for_item(items))
items = List.insert_at(items, -1, ShoppingCart.prompt_for_item(items))
items = List.insert_at(items, -1, ShoppingCart.prompt_for_item(items))

ShoppingCart.display_totals(items)
