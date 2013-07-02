# magical-textarea

Automagically resizes your textarea depending on the size of the input.

## install

**magical-textarea** expects jQuery to be globally accessible. It also follows
node's module pattern, meaning you'll probably need something like Browserify
in order to use It

## usage

#### `magicalTextarea(textarea)`

`magical-textarea` exports a single function, which you pass your textarea to.
That's it, that's all.

```javascript
var magicalTextarea = require('magical-textarea');
magicalTextarea("textarea#my-amazing-textarea");
```

## license

MIT. See LICENSE file.
