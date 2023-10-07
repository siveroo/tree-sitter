const lib = @cImport({
    @cInclude("tree_sitter/api.h");
    @cInclude("tree_sitter/parser.h");
});

pub usingnamespace lib;
