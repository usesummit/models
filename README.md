# Summit Models

## Background
This repo hosts models built using Summit Event Language (SEL), which can be uploaded/imported to https://usesummit.com.  We are beginning the work of turning SEL into a text-based language.  Editing SEL without needing to use the IDE hosted at usesummit.com is the first step, as it broadens access, makes SEL faster to write, and opens up opportunities for AI to contribute.

Our short-term plan is to still require use of the interpreter we host at usesummit.com in order to run these models, while offering a generous free tier to allow personal use, and business use within limits.

If you're reading this, you likely either work at Summit or you are a close friend or supporter.  Thanks for being here!  We still have a lot to do.

If you're wondering why SEL exists at all, this page does a good job of explaining: https://summit.readme.io/docs/what-it-is-why

## How model files are organized
Since models are often shaped with a specific data source in mind (ex. a CRM, a billing processor), models are organized around the data source, if one exists, for example `hubspot`.  Models that work with a variety of data sources and generic file formats like CSV are stored under `agnostic`.

## How SEL models work & limitations

### Orientation
What you see in Summit when you build and host an app is an interface (canvas-based IDE) to create and connect events, define their recurring patterns, and insert SEL expressions to run when they execute.

The documentation for the full library of SEL expressions (event types, conditionals, constants, etc.) can be found at https://summit.readme.io/docs.

Since much of the work to wrap and define an model is handled on usesummit.com as part of the IDE, the text-based version of SEL (.sel) has an expanded set of rules and syntax that must be explicitly declared in order to create a working model.  Namely:

- Events may be declared/created using the event title in double quotes `"` followed by a `:` and then a SEL expression.
- Events may be connected through routes drawn using `->`.
- Metrics may be defined using `%` at the beginning of a line.
- Any line starting with `#` is a comment with the exception of `#!`
- The hashbang `#!` is used to specify a version of SEL.

Example:

```
#!/usesummit/sel/0.1a

# Define some events with SEL expressions after the :
"a": = 2
"b": * 5
"c": =Response("total")

# Draw the flow using ->
"a" -> "b" -> "c"

```

When uploaded to Summit, this will be turned into an model with an API that calculates the value `10` and returns a response object containing a `data` attribute: `"total": 10`.

### Limitations
Some features of the language are not yet supported in `.sel` notation.  Namely:

- To have event recur, you must use an `Every()` event (no direct setting on individual events).
- Choosing what measurement values ought to appear by default for an event in the output table.

## How to help

We are still very much in the alpha phase.  The most useful things at the moment are questions that help us figure out your interests and the future of SEL.  If you have one, let us know!

