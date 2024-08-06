// Purpose: Find the largest prime factor of the number 600851475143
// Author: Eben Quenneville
// Date: 2022-11-12
const std = @import("std");
const assert = std.debug.assert;

pub fn main() !void {
    var num: u64 = 600851475143;
    var i: u64 = 2;
    while (i * i <= num) {
        if (@mod(num, i) == 0) {
            num /= i;
        } else {
            i += 1;
        }
    }
    const stdout = std.io.getStdOut().writer();
    assert(num == 6857);
    try stdout.print("Output: {d}\n", .{num});
}
