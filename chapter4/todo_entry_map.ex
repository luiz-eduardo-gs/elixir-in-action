defmodule MultiDict do
  def new(), do: %{}

  def add_entry(dict, key, value) do
    Map.update(dict, key, [value], &[value | &1])
  end

  def entries(dict, key) do
    Map.get(dict, key, [])
  end
end

defmodule TodoList do
  def new(), do: MultiDict.new()

  def add_entry(todo_list, entry) do
    MultiDict.add_entry(todo_list, entry.date, entry.title)
  end

  def entries(todo_list, date) do
    MultiDict.entries(todo_list, date)
  end

  def due_today(todo_list) do
    Map.get(todo_list, Date.utc_today(), [])
  end
end
