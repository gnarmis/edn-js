# edn-js

*Update: putting this in the freezer for now since there are some JS [implementations](https://github.com/edn-format/edn/wiki/Implementations) already, and I'd rather start using edn immediately. Feel free to pick through this!

This is a [PEG.js](https://github.com/dmajda/pegjs) generated [edn](https://github.com/edn-format/edn) parser in JavaScript.

I've setup the infrastructure and written a simple spec using the pegjs standard example. A few of the basic values can be consumed. Check out `spec/coffee/simple_spec.coffee`.

## Testing

Specs are in CoffeeScript, and using the following to auto-compile them: `coffee -o spec/js -cw spec/coffee/*`

## Development Notes

- `pegjs src/edn.pegjs lib/edn.js` to build parser
- `jasmine-node spec` to run all specs
- unlike edn-ruby, which uses Parslet, pegjs seems to mix the parser and the transformer
- I decided to make a parser to produce a JSON AST first and then worry about a transformer later
- Created `src/dev` from peg.js's online development environment. Added ability to select file (edn.pegjs) and insert its contents into the appropriate textarea.