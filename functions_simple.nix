# Functions are everywhere in the Nix language and deserve particular attention.
#
# A function always takes exactly one argument. Argument and function body are separated by a colon (:).
# Wherever you see a colon (:) in Nix language code:
# On its left is the function argument
# On its right is the function body.
let
  f = x: x + 1;
in f 1
