# JSM: jsx compiler targeting marketing people

## What?

A compiler for a subset of jsx. Removes all scary javascript concepts
like "export const" in favour of a dead simple jsx dialect.

Compiles
```javascript
<List>
  <Testimonials center />
  <Item name="abc" />
</List>
```

into
```javascript
import React from "react"
import * as Blocks from "../blocks"

export const Page =
  React.createElement(Blocks.List, null,
    React.createElement(Blocks.Testimonials, {center: true}),
    React.createElement(Blocks.Item, {name: "abc"}));

```

## Features
  * Namespaced components
  * Automatic import generation
  * Dead code elimination
  * Simple jsx dialect targeted for marketing people
  * Static analysis providing high quality error reporting

## development

```bash
yarn
make build
make test
```


