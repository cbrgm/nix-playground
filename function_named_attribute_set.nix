# Also known as “@ pattern”, “@ syntax”, or “‘at’ syntax”.
#
# An attribute set argument can be given a name to be accessible as a whole.
# This is denoted by prepending or appending the name to the attribute set argument, separated by the at sign (@).
let
  f = {a, b, ...}@args: a + b + args.c;
in
f { a = 1; b = 2; c = 3; }
