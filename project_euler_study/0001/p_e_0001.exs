# Project Euler No.0001 by Elixir

defmodule Solution do

  defp sum_multiples_3or5(num) do
    1..(num - 1)
    |> Enum.filter(fn(x) -> (rem(x, 3) == 0) or (rem(x, 5) == 0) end)
    |> Enum.sum
  end

  def run() do
    sum_multiples_3or5(10)   |> IO.puts()
    sum_multiples_3or5(1000) |> IO.puts()
  end

end

Solution.run()
