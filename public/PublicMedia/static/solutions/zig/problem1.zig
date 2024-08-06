// Purpose: Find the sum of all the multiples of 3 or 5 below 1000.
// Author: Eben Quenneville
// Date: 2022-11-12
const std = @import("std");
const assert = std.debug.assert;

pub fn main() !void {
    var sum: usize = 0;
    var i: usize = 0;
    while (i < 1000) : (i += 1) {
        if (@mod(i, 3) == 0) {
            sum += i;
            continue;
        }
        if (@mod(i, 5) == 0) {
            sum += i;
        }
    }
    const stdout = std.io.getStdOut().writer();
    assert(sum == 233168);
    try stdout.print("Output: {d}\n", .{sum});
}
