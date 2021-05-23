defmodule Inmana.Welcome do
  def welcome(%{"name" => name, "age" => age}) do
    age = String.to_integer(age)

    name
    |> String.trim()
    |> String.capitalize()
    |> evaluate(age)
  end

  defp evaluate("Banana", 42) do
    {:ok, "You're very special"}
  end

  defp evaluate(name, age) when age >= 18 do
    {:ok, "Welcome, #{name}"}
  end

  defp evaluate(name, _age) do
    {:error, "You shall not pass, #{name}"}
  end
end
