quotation = IO.gets("What is the the quote? ") |> String.rstrip
name = IO.gets("Who said it? ") |> String.rstrip
IO.puts(name <> " said, " <> "\"" <> quotation <> "\"")
