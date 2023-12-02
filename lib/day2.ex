defmodule Aoc2023.Day2 do
  alias Aoc2023.Data

  @bag %{red: 12, green: 13, blue: 14}

  def part1(data \\ Data.load("day2.txt")) do
    data
    |> Enum.map(&parse_game/1)
    |> Enum.reject(&(&1.red > @bag.red or &1.blue > @bag.blue or &1.green > @bag.green))
    |> Enum.map(& &1.id)
    |> Enum.sum()
  end

  def part2(data \\ Data.load("day2.txt")) do
    data
    |> Enum.map(&parse_game/1)
    |> Enum.map(&(&1.red * &1.green * &1.blue))
    |> Enum.sum()
  end

  defp parse_game(game) do
    [game, sets] = String.split(game, ":", trim: true)
    id = String.replace_leading(game, "Game ", "") |> String.to_integer()

    [:red, :green, :blue]
    |> Enum.map(&{&1, max_number_of_colour(sets, &1)})
    |> Enum.into(%{})
    |> Map.put(:id, id)
  end

  defp max_number_of_colour(sets, colour) do
    Regex.scan(~r/(\d+) #{colour}/, sets)
    |> Enum.map(&List.last/1)
    |> Enum.map(&String.to_integer/1)
    |> Enum.max()
  end
end
