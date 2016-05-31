s = IO.gets("What is the input string? ") |> String.rstrip
if s == "" do
  IO.puts("You were supposed to enter something.")
else
  IO.puts("#{s} has #{String.length(s)} characters.")
end
