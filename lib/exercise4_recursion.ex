defmodule ElixirExercises.Exercise4Recursion do
  def list_sum([_h | _t] = list) do
    list_sum(list, 0, 0, %{})
  end

  def list_sum([]) do
    {:ok, 0}
  end

  def list_sum(_not_list) do
    {:error, "It isn't a stupid list, think please xD"}
  end

  defp list_sum([], sum, _counter, error_map) do
    case Map.keys(error_map) do
      [] -> {:ok, sum}
      _ -> {:error, error_map}
    end
  end

  defp list_sum([h | t], sum, counter, error_map) do
    cond do
      is_integer(h) ->
        list_sum(t, sum + h, counter + 1, error_map)

      true ->
        error_map = Map.put(error_map, counter, h)
        list_sum(t, sum, counter + 1, error_map)
    end
  end
end
