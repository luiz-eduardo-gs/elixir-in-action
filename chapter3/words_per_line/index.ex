defmodule Lines do
  def words_per_line!(path \\ "../file.txt") do
    File.stream!(path)
    |> Stream.map(&String.replace(&1, "\n", ""))
    |> Stream.map(&String.split/1)
    |> Enum.map(&length/1)
  end
end
