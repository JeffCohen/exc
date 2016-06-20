defmodule RectangularRoom do

  def area(length, width) do
    length * width
  end

  def convert_to_metric(area) do
    area * 0.09290304
  end

end

{ length, _ } = IO.gets("What is the length of the room, in feet? ") |> String.rstrip |> Integer.parse
{ width, _ } = IO.gets("What is the width of the room, in feet? ") |> String.rstrip |> Integer.parse

IO.puts("You entered dimensions of #{length} feet by #{width} feet.")

area = RectangularRoom.area(length, width)

IO.puts("The area is")
IO.puts("#{area} square feet")
metric_area = RectangularRoom.convert_to_metric(area)
IO.puts("#{metric_area} square meters")
