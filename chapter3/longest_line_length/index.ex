defmodule Lines do
  def longest_line_length!(path \\ "../file.txt") do
    File.stream!(path)
    |> Stream.map(&String.replace(&1, "\n", ""))
    |> Stream.map(&String.length/1)
    |> Enum.max()
  end
end
