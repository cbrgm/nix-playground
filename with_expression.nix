# The with expression allows access to attributes without repeatedly referencing their attribute set.
let
  a = {
    x = 1;
    y = 2;
    z = 3;
  };
in
with a; [ x y z ]
