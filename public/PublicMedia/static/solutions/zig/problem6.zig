// Purpose: Find the difference between the sum of the squares of the first one hundred natural numbers and the square of the sum.
//
// Author: Eben Quenneville
// Date: 2023-01-31
const std = @import("std");
const assert = std.debug.assert;

pub fn main() !void {
    var sum: usize = 0;
    var sumOfSquares: usize = 0;
    var i: usize = 0;
    while (i < 101) : (i += 1) {
        sum += i;
        sumOfSquares += i * i;
    }
    const difference = (sum * sum) - sumOfSquares;
    assert(difference == 25164150);
    const stdout = std.io.getStdOut().writer();
    try stdout.print("Output: {d}\n", .{difference});
}
