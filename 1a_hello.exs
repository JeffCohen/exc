# This doesn't work, but I sure wish it would
# There must be something about the &1 syntax
# that I don't understand yet.

IO.gets("What is your name? ")
  |> String.rstrip
  |> IO.puts("Hello, #{&1}, nice to meet you!")
