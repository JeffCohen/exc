defmodule Retirement do

  def show_retirement_plan(years_left) when years_left < 0 do
    IO.puts("You can already retire!")
  end

  def show_retirement_plan(years_left) do
    { { current_year, _, _ }, _ } = :calendar.local_time()
    IO.puts("It is currently #{current_year}, so you can retire in #{current_year + years_left}.")
  end

end

{ current_age, _ } = IO.gets("How old are you? ") |> String.rstrip |> Integer.parse
{ retirement_age, _ } = IO.gets("At what age would you like to retire? ") |> String.rstrip |> Integer.parse


Retirement.show_retirement_plan(retirement_age - current_age)
