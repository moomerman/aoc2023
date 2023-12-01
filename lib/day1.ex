defmodule Aoc2023.Day1 do
  alias Aoc2023.Data

  def part1(data \\ Data.load("day1.txt")) do
    data
    |> Enum.map(&first_and_last_digits/1)
    |> Enum.sum()
  end

  def part2(data \\ Data.load("day1.txt")) do
    data
    |> Enum.map(fn s ->
      s
      |> String.replace(~r/one/, "o1e")
      |> String.replace(~r/two/, "t2o")
      |> String.replace(~r/three/, "t3e")
      |> String.replace(~r/four/, "f4r")
      |> String.replace(~r/five/, "f5e")
      |> String.replace(~r/six/, "s6x")
      |> String.replace(~r/seven/, "s7n")
      |> String.replace(~r/eight/, "e8t")
      |> String.replace(~r/nine/, "n9e")
    end)
    |> Enum.map(&first_and_last_digits/1)
    |> Enum.sum()
  end

  defp first_and_last_digits(s) do
    s
    |> String.replace(~r/[a-z]/, "")
    |> then(fn x -> "#{String.at(x, 0)}#{String.at(x, -1)}" end)
    |> String.to_integer()
  end
end
