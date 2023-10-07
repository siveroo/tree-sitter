const std = @import("std");

pub fn build(b: *std.Build) void {
    _ = b.addModule("treesitter", .{
        .source_file = .{ .path = "treesitter.zig" },
    });

    _ = b.addModule("highlight", .{
        .source_file = .{ .path = "highlight.zig" },
    });

    var lib = b.addStaticLibrary(.{
        .name = "tree-sitter",
        .target = b.standardTargetOptions(.{}),
        .optimize = b.standardOptimizeOption(.{}),
    });

    lib.linkLibC();
    lib.addCSourceFile(.{ .file = .{ .path = "lib/src/lib.c" }, .flags = &.{} });
    lib.addIncludePath(.{ .path = "lib/include" });
    lib.addIncludePath(.{ .path = "lib/src" });
    lib.addIncludePath(.{ .path = "highlight/include" });

    b.installArtifact(lib);
}
