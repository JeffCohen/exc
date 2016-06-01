{ current_age, _ } = IO.gets("How old are you? ") |> String.rstrip |> Integer.parse
{ retirement_age, _ } = IO.gets("At what age would you like to retire? ") |> String.rstrip |> Integer.parse

years_left = retirement_age - current_age
{ { current_year, _, _ }, _ } = :calendar.local_time()

IO.puts("It is currently #{current_year}, so you can retire in #{current_year + years_left}.")
