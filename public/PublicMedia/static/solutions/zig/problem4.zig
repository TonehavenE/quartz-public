// Purpose: Find the largest palindrome made from the product of two 3-digit numbers 
// Author: Eben Quenneville
// Date: 2022-11-12

const std = @import("std");
const assert = std.debug.assert;

pub fn main() !void {
    var largest: usize = 0;
    var i: usize = 100;
    while (i < 1000) : (i += 1) {
        var j: usize = i;
        while (j < 1000) : (j += 1) {
            var result: usize = i * j;
            if (is_palindrome(result) and (result > largest)) {
                largest = result;
            }
        }
    }
    const stdout = std.io.getStdOut().writer();
    assert(largest == 906609);
    try stdout.print("Output: {d}\n", .{largest});
}

fn reverse(const_n: usize) usize {
    var n = const_n;
    var reversed: usize = 0;
    while (n > 0) { 
        reversed = 10 * reversed + @mod(n, 10);
        n /= 10;
    }
    return reversed;
}

fn is_palindrome(n: usize) bool {
    if (n == reverse(n)) {
        return true;
    } else {
        return false;
    }
}