defmodule ElixirExercises.Exercise3DefaultValue do
  def calculator(value1, value2, operator \\ 1)

  def calculator(value1, value2, operator) when is_integer(value1) and is_integer(value2) do
    case operator do
      1 -> {:ok, value1 + value2}
      2 -> {:ok, value1 - value2}
      3 -> {:ok, value1 * value2}
      4 -> {:ok, value1 / value2}
      _ -> {:error, "Hey person! It's a operator, ok?"}
    end
  end

  def calculator(value1, value2, _operator) do
    {:error, "Seriously? Value1 #{value1} and  value2 #{value2} must be integers"}
  end
end
