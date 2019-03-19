defmodule ElixirExercises.Exercise4Recursion do
  def list_sum([h | t]) do
    list_sum(t, h)
  end

  defp list_sum([], sum) do
    sum
  end

  defp list_sum([h | t], sum) do
    list_sum(t, sum + h)
  end
end
