# Also known as “curried functions”.
#
# Nix functions take exactly one argument. Multiple arguments can be handled by nesting functions.
# Such a nested function can be used like a function that takes multiple arguments, but offers additional flexibility.
let
  f = x: y: x + y;
in
f 1
