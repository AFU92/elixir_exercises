defmodule ElixirExercises.Exercise2PatternMatch do
  def what_is_it(%{}) do
    {:ok, "It's a map baby xD"}
  end

  def what_is_it([]) do
    {:ok, "It's an empty list darling :)"}
  end

  def what_is_it([_head | _tall]) do
    {:ok, "It's a list honey :3"}
  end

  def what_is_it(term) do
    cond do
      is_tuple(term) -> {:ok, "It's a tuple sweety :D"}
      is_boolean(term) -> {:ok, "It's a boolean :O"}
      is_binary(term) -> {:ok, "It's a string -_-"}
      is_integer(term) -> {:ok, "It's a integer (^-^)"}
      true -> {:ok, "What the f**k it is? :("}
    end
  end
end
