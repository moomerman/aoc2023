defmodule Aoc2023.Day1Test do
  use ExUnit.Case

  test "part1 example" do
    data =
      """
      1abc2
      pqr3stu8vwx
      a1b2c3d4e5f
      treb7uchet
      """
      |> String.split("\n", trim: true)

    assert Aoc2023.Day1.part1(data) == 142
  end

  test "part1" do
    assert Aoc2023.Day1.part1() == 55816
  end

  test "part2 example" do
    data =
      """
      two1nine
      eightwothree
      abcone2threexyz
      xtwone3four
      4nineeightseven2
      zoneight234
      7pqrstsixteen
      """
      |> String.split("\n", trim: true)

    assert Aoc2023.Day1.part2(data) == 281
  end

  test "part2" do
    assert Aoc2023.Day1.part2() == 54980
  end
end
