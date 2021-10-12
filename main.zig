const S2n = @import("./s2n.zig");
const std = @import("std");

pub fn main() anyerror!void {
    S2n.boot(std.heap.c_allocator);
    std.debug.print("it worked!", .{});
}
