# Purpose: What is the smallest positive number that is evenly divisible by all of
# the numbers from 1 to 20?

# Author: Eben Quenneville
# Date: 2023-03-02
import ExUnit.Assertions

defmodule Problem5 do
  # Least common multiple of `a` and `b`
  def lcm(a, b) do
    div(a * b, Integer.gcd(a, b))
  end

  # Main driver
  def problem() do
    divisors = Enum.to_list(1..20)
    List.foldl(divisors, 1, fn x, acc -> lcm(acc, x) end)
  end

  # Check solution
  def main() do
    solution = problem()
    assert solution == 232_792_560
    IO.puts("Output: #{solution}")
  end
end

Problem5.main()
