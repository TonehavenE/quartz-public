// Purpose: By considering the terms in the Fibonacci sequence whose values do not exceed four million,
// find the sum of the even-valued terms.
// Author: Eben Quenneville
// Date: 2022-11-12
const std = @import("std");
const assert = std.debug.assert;

pub fn main() !void {
    var sum: usize = 2;
    var first: usize = 1;
    var previous: usize = 2;
    var current: usize = first + previous;
    while (current + previous < 4000000) {
        first = previous;
        previous = current;
        current = first + previous;
        if (@mod(current, 2) == 0) {
            sum += current;
        }
    }
    const stdout = std.io.getStdOut().writer();
    assert(sum == 4613732);
    try stdout.print("Output: {d}\n", .{sum});
}
