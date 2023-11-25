# inherit is shorthand for assigning the value of a name from an existing scope to the same name in a nested scope. It is for convenience to avoid repeating the same name multiple times.
let
  x = 1;
  y = 2;
in
{
  inherit x y;
}
