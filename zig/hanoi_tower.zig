const std = @import("std");
const builtin = @import("builtin");
const native_arch = builtin.cpu.arch;
const expect = std.testing.expect;

fn hanoi(n: i32, a: c_char, b: c_char, c: c_char) u64 {
    if (n == 1) {
        return 1;
    }
    return hanoi(n - 1, a, c, b) + 1 + hanoi(n - 1, b, a, c);
}

pub fn main() !void {
    const stdout = std.io.getStdOut().writer();
    const moves = hanoi(32, 'a', 'b', 'c');
    try stdout.print("Moves: {}!\n", .{moves});
}

test "hanoi with 16 disks" {
    try expect(hanoi(16, 'a', 'b', 'c') == 65535);
}
