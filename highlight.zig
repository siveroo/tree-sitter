const lib = @cImport({
    @cInclude("tree_sitter/api.h");
    @cInclude("tree_sitter/parser.h");
    @cInclude("tree_sitter/highlight.h");
});

pub usingnamespace lib;
