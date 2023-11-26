{

  # Attribute sets
  foo = null;
  x.bar = null;

  # Variables
  variables =
    let someVar = 10;
    in someVar + 1;

  # Interpolation examples
  interpolation =
    let someName = "Uwe";
    in "Hello, ${ someName} Jacob!";

  interpolation' =
    let
      a = 10;
      b = 20;
    in
    "Hello, ${ toString( a + b)}";

  # AttributeSelectors
  attributeSelectors =
    let
      foo.bar.baz = 10;
      foo.bar.qyz = 20;
    in
      foo.bar.hello or 30; # This attribute does not exist, we can use the or operator to use another value

  booleanOps = (true && !false) || (true -> false);

  # Functions
  someFun = x: x + 1;
  # def someFun(x)
  # return x + 1

  someFun' =
    let f = x: y: x + y;
    in f 1 2;

  someFunAttrs =
    let f = { x, y }: x + 1;
    in
    f {
      x = 2;
      y = 2;
    };

  someFunAttrs' =
    let f = { x, y, ... }: x + 1 + y;
    in
    f {
      x = 2;
      y = 2;
      ignored = 5;
    };

  someFunAttrs'' =
    # Example with defaults set
    let f = { x ? 5, y, ... }: x + y;
    in
    f {
      # x = 2;
      y = 2;
      ignored = 5;
    };

  someFunAttrs''' =
    let
      # let f = { x ? 5, y, ... }: x + y;
      # is equivalent to
      g = attrs: attrs.x or attrs.y + 1;
    in
    g {
      # x = 2;
      y = 10;
    };

  someFunAttrs'''' =
    let
      f = { x ? 5, y, ... }: x + y;
      g = attrs: attrs.x or attrs.y + 1;
      fg = attrs@{ x ? 5, y, ... }: x + y;
      gf = { x ? 5, y, ... }@attrs: x + y;
    in
    fg {
      # x = 2;
      y = 10;
    };

  ifExpr = if 1 + 1 == 2 then "Yes" else 10;

  checkForAttributes =
    let foo.bar.baz = 10;
    in foo ? bar.baz;

  functionMaybeArgument =
    let
      f = { x, y, ... }@attrs:
        x + y + (if attrs ? notIgnored then attrs.notIgnored else 0);
    in
    f {
      x = 1;
      y = 2;
      notIgnored = 3;
    };

  builtinFunctions =
    let
      f = builtins.map (x: x + 1) [ 1 2 3 ];
    in
    f;
}
