defmodule Aoc2023.Data do
  def load(file) do
    File.read!(Path.join([__DIR__, "..", "data", file]))
    |> String.split("\n", trim: true)
  end
end
