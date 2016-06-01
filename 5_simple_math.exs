{ x, _ } = IO.gets("What is the first number? ") |> String.rstrip |> Integer.parse
{ y, _ } = IO.gets("What is the second number? ") |> String.rstrip |> Integer.parse

sum = x + y
difference = x - y
product = x * y
quotient = x / y

IO.puts("#{x} + #{y} = #{sum}\n#{x} - #{y} = #{difference}\n#{x} * #{y} = #{product}\n#{x} / #{y} = #{quotient}")
