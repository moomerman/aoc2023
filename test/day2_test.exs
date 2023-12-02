defmodule Aoc2023.Day2Test do
  use ExUnit.Case

  @sample_data """
               Game 1: 3 blue, 4 red; 1 red, 2 green, 6 blue; 2 green
               Game 2: 1 blue, 2 green; 3 green, 4 blue, 1 red; 1 green, 1 blue
               Game 3: 8 green, 6 blue, 20 red; 5 blue, 4 red, 13 green; 5 green, 1 red
               Game 4: 1 green, 3 red, 6 blue; 3 green, 6 red; 3 green, 15 blue, 14 red
               Game 5: 6 red, 1 blue, 3 green; 2 blue, 1 red, 2 green
               """
               |> String.split("\n", trim: true)

  test "part1 example" do
    assert Aoc2023.Day2.part1(@sample_data) == 8
  end

  test "part1" do
    assert Aoc2023.Day2.part1() == 2593
  end

  test "part2 example" do
    assert Aoc2023.Day2.part2(@sample_data) == 2286
  end

  test "part2" do
    assert Aoc2023.Day2.part2() == 54699
  end
end
