# edn-js

A [PEG.js](https://github.com/dmajda/pegjs) generated [edn](https://github.com/edn-format/edn) parser in JavaScript.

Right now, there's not much to see! I've setup the infrastructure and written a simple spec using the pegjs standard example.

## Testing

- I'm writing specs in CoffeeScript, and using the following to auto-compile them: `coffee -o spec/js -cw spec/coffee/*`

## Development Notes

- `pegjs src/edn.pegjs lib/edn.js` to build parser
- `jasmine-node spec` to run all specs