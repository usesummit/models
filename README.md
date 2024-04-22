# Summit Models
Because no-code needs open-source libraries.

## How model files are organized
Since models are often shaped with a specific data source in mind (ex. a CRM, a billing processor), models are organized around the data source, if one exists, for example `hubspot`.  Models that work with a variety of data sources and generic file formats like CSV are stored under `agnostic`.

## Preface
This repo hosts models built using Summit Event Language (SEL), which can be uploaded/imported to [Summit](https://usesummit.com).  We recently began the work of turning SEL into a text-based language.  Editing SEL without needing to use the IDE hosted at usesummit.com is the first step, as it broadens access, makes SEL faster to write, and opens up opportunities for AI to contribute.

Our short-term plan is to still require use of the interpreter we host at usesummit.com in order to run these models, while offering a generous free tier to allow personal use, and business use within limits.  One source of inspiration for our commercialization efforts is [dbt labs](https://github.com/dbt-labs/dbt-core).

If you're reading this, you likely either work at Summit or you are a close friend or supporter.  Thanks for being here!  We still have a lot to do.

If you're wondering why SEL exists at all, [this page does a good job of explaining](https://summit.readme.io/docs/what-it-is-why).

## How SEL models work & limitations

### What really is SEL?
SEL is a declarative langage (hence all the `=` signs) that allows no-coders to describe functionality and a logical flow using arrows.  As an abstraction of Python, it removes a lot of the heavy-lifting and tedium -- the hurdles that rob the joy out of coding a tiny script, plugin, or extension that creates value. SEL solves this by being a quick, fun, powerful, and complementary tool to platforms like Make, Zapier, Glide, et al.

GPT doesn't make this benefit obsolete, because GPT can also generate SEL, which is more compact, faster to generate than its general-purpose counterparts.

### Orientation
What you see in Summit when you build and host a model is an interface (canvas-based IDE) to create and connect the expressions of a model ("events").

The documentation for the full library of SEL expressions (event types, conditionals, constants, etc.) can be found in our [Technical Documentation](https://summit.readme.io/docs).

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

- If you're building a simulation (not a data transformation), to have an event recur, you must use an `Every()` event (no direct setting on individual events).

## How to help

We are still very much in the alpha phase.  The most useful things at the moment:

- Request access to Summit at usesummit.com and let us know you'd like to contribute
- Use "Create with AI" to create models, then test them and place them here for others.
- [Sponsor this project](https://github.com/sponsors/usesummit)!  This repo is free and we have a generous free tier.  Lets keep it that way.

