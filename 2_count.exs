s = IO.gets("What is the input string? ") |> String.rstrip
IO.puts("#{s} has #{String.length(s)} characters.")
