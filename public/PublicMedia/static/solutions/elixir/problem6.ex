# Purpose: Find the difference between the sum of the squares of the first one
# hundred natural numbers and the square of the sum.

# Author: Eben Quenneville
# Date: 2023-03-04
import ExUnit.Assertions

defmodule Problem6 do
  # Square n
  def sqr(n) do
    n * n
  end

  # Main Driver code
  def problem() do
    # Range from 1 to 100
    r = 1..100
    sum = Enum.sum(r)
    sumSquares = Enum.sum(Enum.map(r, fn x -> sqr(x) end))
    sqr(sum) - sumSquares
  end

  # Assert the solution
  def main() do
    solution = problem()
    assert solution = 25_164_150
    IO.puts("Output: #{solution}")
  end
end

Problem6.main()
