defmodule ElixirExercises.Exercise1Case do
  def calculate_bonification(value) do
    case value do
      x when is_integer(x) and x > 0 ->
        cond do
          value > 0 and value < 1000 -> {:ok, value * 0.1}
          value >= 1000 and value < 10000 -> {:ok, value * 0.2}
          value >= 10000 -> {:ok, value * 0.3}
        end

      x when is_integer(x) ->
        {:error, "Are you f**king kidding me?, is a natural number!"}

      _x ->
        {:error, "Are you f**king kidding me?, value isn't an integer number!"}
    end
  end
end
