noun = IO.gets("Enter a noun: ") |> String.rstrip
verb = IO.gets("Enter a verb: ") |> String.rstrip
adjective = IO.gets("Enter a adjective: ") |> String.rstrip
adverb = IO.gets("Enter a adverb: ") |> String.rstrip

IO.puts("A sign said, \"Please #{verb} the #{adjective} #{noun} #{adverb}\".")
