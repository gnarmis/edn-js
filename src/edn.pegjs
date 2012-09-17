/*
 * Classic example grammar, which recognizes simple arithmetic expressions like
 * "2*(3+4)". The parser generated from this grammar then computes their value.
 */

root = top

top = a:space? b:base_value c:space? {return b;}

base_value
  = boolean
  / "nil" { return undefined;}
  / integer
  / character

boolean
  = "true" { return true; }
  / "false" { return false; }

integer
  = a:[-+]?
    b:[0-9]+
    c:"N"? { if (c) {
               return {
                 integer: a=="-" ? (a+b).join("") : b.join(""),
                 precision: c
               };}
             else {
               return {
                 integer: a=="-" ? (a+b).join("") : b.join("")
               };}}

space = a:[ ,]+ {return a.join("");}

character
  = a:("\\" ("newline"/"space"/"tab"/b:.?)?) { return { character: a.join("")};}
