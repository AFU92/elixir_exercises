defmodule ElixirExercises.Exercise5RecursionList do
  def list_to_map([_h | _t] = list) do
    {:ok, list_to_map(list, %{})}
  end

  def list_to_map([]) do
    {:ok, %{}}
  end

  def list_to_map(_param) do
    {:error, "I'm expecting a f**king list!"}
  end

  defp list_to_map([], result_map) do
    result_map
  end

  defp list_to_map([h | t], result_map) do
    [date, meridian, _id, value] = h

    result_map =
      case Map.get(result_map, date) do
        nil ->
          Map.put(result_map, date, %{meridian => value})

        map_date ->
          map_date =
            case Map.get(map_date, meridian) do
              nil ->
                Map.put(map_date, meridian, value)

              current_value ->
                Map.put(map_date, meridian, value + current_value)
            end

          Map.put(result_map, date, map_date)
      end

    list_to_map(t, result_map)
  end
end
