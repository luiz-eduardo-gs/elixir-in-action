defmodule Lines do
  def large_lines!(path \\ "../file.txt") do
    File.stream!(path)
    |> Stream.map(&String.replace(&1, "\n", ""))
    |> Enum.filter(&(String.length(&1) > 80))
  end
end
