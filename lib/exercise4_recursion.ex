defmodule ElixirExercises.Exercise4Recursion do
  def list_sum([h | t]) do
    list_sum(t, h)
  end

  def list_sum(_not_list) do
    {:error, "It isn't a stupid list, think please xD"}
  end

  defp list_sum([], sum) do
    {:ok, sum}
  end

  defp list_sum([h | t], sum) do
    list_sum(t, sum + h)
  end
end
