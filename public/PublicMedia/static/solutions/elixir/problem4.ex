# Purpose: Find the largest palindrome made from the product of two 3-digit numbers

# Author: Eben Quenneville
# Date: 2022-09-05, updated 2023-01-27
import ExUnit.Assertions

defmodule Problem4 do
  def palindrome?(n) do
    n == Integer.undigits(Enum.reverse(Integer.digits(n)))
  end

  def problem() do
    Enum.max(List.flatten(generate_palindromes()))
  end

  def generate_palindromes() do
    for x <- 100..1000 do
      for y <- x..1000 do
        if palindrome?(x * y) do
          x * y
        else
          0
        end
      end
    end
  end

  # Check solution
  def main() do
    solution = problem()
    assert solution == 906_609
    IO.puts("Output: #{solution}")
  end
end

Problem4.main()
