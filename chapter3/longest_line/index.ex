defmodule Lines do
  def longest_line!(path \\ "../file.txt") do
    File.stream!(path)
    |> Stream.map(&String.replace(&1, "\n", ""))
    |> Enum.max_by(&String.length/1)
  end
end
