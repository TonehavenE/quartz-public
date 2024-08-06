// Purpose: Find the 10 001st prime number.
//
// Author: Eben Quenneville
// Date: 2023-01-31
const std = @import("std");
const assert = std.debug.assert;
const TARGET_PRIME = 10001;

pub fn main() !void {
    var candidate: usize = 1;
    var primeCount: usize = 1;
    while (primeCount < TARGET_PRIME) {
        candidate += 2;
        if (isPrime(candidate)) {
            primeCount += 1;
        }
    }
    // exits loop at TARGET_PRIME, so candidate = 10001st prime
    assert(candidate == 104743);
    const stdout = std.io.getStdOut().writer();
    try stdout.print("Output: {d}\n", .{candidate});
}

fn isPrime(n: usize) bool {
    var prime: bool = true;
    var i: usize = 2;
    while (i < @floatToInt(usize, @sqrt(@intToFloat(f32, n))) + 1) {
        if (@mod(n, i) == 0) {
            prime = false;
            break;
        }
        i += 1;
    }
    return prime;
}