defmodule ElixirExercises.Exercise2Case do
  def what_is_it(term) do
    case term do
      %{} ->
        {:ok, "It's a map baby xD"}

      [] ->
        {:ok, "It's an empty list darling :)"}

      [_head | _tall] ->
        {:ok, "It's a list honey :3"}

      _ ->
        other_type(term)
    end
  end

  defp other_type(term) do
    cond do
      is_tuple(term) -> {:ok, "It's a tuple sweety :D"}
      is_boolean(term) -> {:ok, "It's a boolean :O"}
      is_binary(term) -> {:ok, "It's a string -_-"}
      is_integer(term) -> {:ok, "It's a integer (^-^)"}
      true -> {:ok, "What the f**k it is? :("}
    end
  end
end
