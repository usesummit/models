# Summit Apps

## Background
This repo hosts applications built using Summit Event Language (SEL), which can be uploaded/imported to https://usesummit.com.  We are beginning the work of turning SEL into an open-source language and interpreter.  Editing SEL without needing to use the IDE hosted at usesummit.com is the first step.

If you're reading this, you likely either work at Summit or you are a close friend or supporter.  Thanks for being here!  We still have a lot to do.

## How it works
When hosted in Summit, these apps expose a subset of the language to define the actions that occur when events are triggered.  These are referred to as SEL expressions.

The documentation for SEL expressions (event types, conditionals, constants, etc.) can be found at https://summit.readme.io/docs.

Since much of the work to wrap and define an application is handled on usesummit.com as part of the IDE, the text-based version of SEL (.sel) has its own set of rules and syntax that should be used to create a working application.  Namely:

- Events may be declared/created using the event title in double quotes `"` followed by a `:` and then a SEL expression.
- Events may be connected through routes drawn using `->`.
- Metrics may be defined using `%` at the beginning of a line.
- Any line starting with `#` is a comment with the exception of `#!`
- The hashbang `#!` is used to specify a version of SEL.

Example:

```
#!/usesummit/sel/0.1a

# Define some events with SEL expressions after the :
"Event Title A": =1
"Event Title B": * 3
"Event Title C": =Pool(0)

# Draw the flow using ->
"Event Title A" -> "Event Title B" -> "Event Title C"

# Create a metric.
% "Ratio Metric": event_title_a / event_title_b
```

## Limitations
Some features of the language are not yet supported in `.sel` notation.  Namely:

- Recurring patterns, both common (ex. monthly) and custom (cron syntax).
- Adjusting what ledger values appear in the output table / response.

  

