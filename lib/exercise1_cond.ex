defmodule ElixirExercises.Exercise1Cond do
  def calculate_bonification(value) when is_integer(value) and value > 0 do
    cond do
      value > 0 and value < 1000 -> {:ok, value * 0.1}
      value >= 1000 and value < 10000 -> {:ok, value * 0.2}
      value >= 10000 -> {:ok, value * 0.3}
    end
  end

  def calculate_bonification(value) when is_integer(value) do
    {:error, "Are you f**king kidding me?, is a natural number!"}
  end

  def calculate_bonification(_value) do
    {:error, "Are you f**king kidding me?, value isn't an integer number!"}
  end
end
