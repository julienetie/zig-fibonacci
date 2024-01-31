// Various types of fibonacci written in zig
const std = @import("std");
const math = @import("std").math;

// Recursive 
fn recursive(n: u64) u64 {
    if (n < 2) {
        return n;
    }
    return recursive(n - 1) + recursive(n - 2);
}

fn tailRecursive(n: u64, acc: u64, prev: u64) u64 {
    if( n < 1) {
        return acc;
    } else{
        return tailRecursive(n - 1, prev + acc, acc);
    }
}

// const phi: f64 = (1.0 + math.sqrt(5.0)) / 2.0;
// fn binetFormula(n: u32) u64 {
//     return (math.pow(phi, n) - math.pow(1.0 - phi, n)) / math.sqrt(5.0);
// }

pub fn main() void {
    const n: u64 = 30;
    const recursiveResult = recursive(n);
    const tailRecursiveResult = tailRecursive(n, 0, 1);

    std.debug.print("recursive({}) results in {}\n", .{n, recursiveResult});
    std.debug.print("tailRecursive({}) results in {}\n", .{n, tailRecursiveResult});
    // std.debug.print("binetFormula({}) results in {}\n", .{n, binetFormula});
}