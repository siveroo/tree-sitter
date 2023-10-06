const lib = @cImport({
    //@cInclude("alloc.h");
    //@cInclude("get_changed_ranges.h");
    @cInclude("language.h");
    @cInclude("lexer.h");
    @cInclude("node.c");
    @cInclude("parser.c");
    //@cInclude("query.h");
    //@cInclude("stack.c");
    //@cInclude("subtree.c");
    //@cInclude("tree_cursor.c");
    //@cInclude("tree.c");
});

pub usingnamespace lib;
