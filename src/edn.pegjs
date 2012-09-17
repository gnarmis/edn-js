
/*
 * Grammar for edn
 * The generated parser will be able to produce a JSON AST
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
    c:"N"? { if (c){return {
               integer: a=="-" ? (a+b).join("") : b.join(""),
               precision: c};}else{return {
               integer: a=="-" ? (a+b).join("") : b.join("")};}}

space = a:[ ,]+ {return a.join("");}

character
  = a:"\\" 
  b:("newline"/"space"/"tab"/(b:.
  {if (b.match(/[\x21-\x7e]/)!==null) 
    { 
      return b;
    }})) 
  { c=a+b;return c.match(/(undefined)/)!==null ? undefined : {character: c};}