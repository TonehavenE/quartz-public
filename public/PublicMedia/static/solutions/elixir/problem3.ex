# Purpose: Find the largest prime factor of the number 600851475143

# Author: Eben Quenneville
# Date: 2023-03-02
import ExUnit.Assertions

defmodule Problem3 do
  # Simpler interface to the main function factors
  def factors_for(n) do
    factors(n, 2, [])
  end

  # Returns the prime factors of the number recursively
  def factors(number, lower_bound, primes) do
    cond do
      lower_bound * lower_bound > number ->
        Enum.reverse([number | primes])

      rem(number, lower_bound) == 0 ->
        factors(div(number, lower_bound), lower_bound, [lower_bound | primes])

      true ->
        factors(number, lower_bound + 1, primes)
    end
  end

  def problem() do
    List.last(factors_for(600_851_475_143))
  end

  # Check solution
  def main() do
    solution = problem()
    assert solution == 6857
    IO.puts("Output: #{solution}")
  end
end

Problem3.main()
