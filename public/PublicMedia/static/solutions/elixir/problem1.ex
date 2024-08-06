# Purpose: Find the sum of all the multiples of 3 or 5 below 1000.
#
# Author: Eben Quenneville
# Date: 2023-03-02

import ExUnit.Assertions

defmodule Problem1 do
  # Return n if n is divisible by 3 or 5
  def is_good(n) do
    cond do
      Integer.mod(n, 3) == 0 ->
        n

      Integer.mod(n, 5) == 0 ->
        n

      # "else"
      true ->
        0
    end
  end

  def problem do
    nums = 1..999
    Enum.sum(Enum.map(nums, fn x -> is_good(x) end))
  end

  # Check solution
  def main do
    solution = problem()
    assert solution == 233_168
    IO.puts("Output: #{solution}")
  end
end

Problem1.main()
