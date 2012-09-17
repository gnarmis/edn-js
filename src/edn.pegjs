/*
 * Classic example grammar, which recognizes simple arithmetic expressions like
 * "2*(3+4)". The parser generated from this grammar then computes their value.
 */

root = top

top = base_value

base_value
  = boolean
  / nil:"nil"

boolean
  = "true" { return true; }
  / "false" { return false; }
