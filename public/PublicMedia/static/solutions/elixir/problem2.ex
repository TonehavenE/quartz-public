# Purpose: By considering the terms in the Fibonacci sequence whose values do not
# exceed four million, find the sum of the even-valued terms.

# Author: Eben Quenneville
# Date: 2023-03-02
import ExUnit.Assertions
require Integer

defmodule Problem2 do
  # return whether n is a perfect square, e.g. 4 -> true
  def is_perfect_square(n) do
    s = trunc(:math.sqrt(n))
    s * s == n
  end

  # returns whether n is a member of the Fibonacci sequence, see
  # https://en.wikipedia.org/wiki/Fibonacci_number#Recognizing_Fibonacci_numbers
  def is_fibonacci(n) do
    is_perfect_square(5 * n * n + 4) or is_perfect_square(5 * n * n - 4)
  end

  # The main driver code
  def problem() do
    # For each number in the range (1, 4,000,000), if it is BOTH
    # a Fibonacci number AND divisible by 2,
    # add it to the sum
    Enum.sum(
      Enum.filter(
        1..4_000_000,
        fn x -> is_fibonacci(x) and Integer.is_even(x) end
      )
    )
  end

  # Check solution
  def main() do
    solution = problem()
    assert solution == 4_613_732
    IO.puts("Output: #{solution}")
  end
end

Problem2.main()
