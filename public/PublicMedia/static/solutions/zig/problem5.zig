// Purpose: What is the smallest positive number that is evenly divisible by all of the numbers from 1 to 20?
// 
// Author: Eben Quenneville
// Date: 2023-01-26
const std = @import("std");
const assert = std.debug.assert;

pub fn main() !void {
    const divisors = [_]u8{ 7, 11, 13, 15, 16, 17, 18, 19, 20};
    var found: bool = false;
    var num: usize = 2520;
    while (!found) {
        num += 20;
        var good: bool = true;
        for (divisors) |div| {
            if ( (good) and (num % div != 0)) {
                good = false; 
            }
        }
        if (good) {
            found = true;
        }
    }
    const stdout = std.io.getStdOut().writer();
    assert(num == 232792560);
    try stdout.print("Output: {d}\n", .{num});
}