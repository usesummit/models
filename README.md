# Summit Apps

## Background
This repo hosts models built using Summit Event Language (SEL), which can be uploaded/imported to https://usesummit.com.  We are beginning the work of turning SEL into an open-source language.  Editing SEL without needing to use the IDE hosted at usesummit.com is the first step, as it broadens access, makes SEL faster to write, and opens up opportunities for AI to contribute.

Our short-term plan is to still require use of the interpreter we host at usesummit.com in order to run these applications.

If you're reading this, you likely either work at Summit or you are a close friend or supporter.  Thanks for being here!  We still have a lot to do.

If you're wondering why SEL exists at all, this page does a good job of explaining: https://summit.readme.io/docs/what-it-is-why

## How it works
What you see in Summit when you build and host an app is an interface (canvas-based IDE) to create and connect events, define their recurring patterns, and insert SEL expressions to run when they execute.

The documentation for SEL expressions (event types, conditionals, constants, etc.) can be found at https://summit.readme.io/docs.

Since much of the work to wrap and define an application is handled on usesummit.com as part of the IDE, the text-based version of SEL (.sel) has an expanded set of rules and syntax that must be explicitly declared in order to create a working application.  Namely:

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

When uploaded to Summit, this will be turned into an application that produces and displays the values 1, 3, and 0.333...

## Limitations
Some features of the language are not yet supported in `.sel` notation.  Namely:

- Recurring patterns, both common (ex. monthly) and custom (cron syntax).
- Adjusting what ledger values appear in the output table / response.

## How to help

We are still very much in the alpha phase.  The most useful things at the moment are questions that help us figure out your interests and the future of SEL.  If you have one, let us know!

