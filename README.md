# apps

Applications built using Summit Event Language (SEL), which can be uploaded/imported to usesummit.com.

Apps in Summit use a subset of the language to define the actions that occur when events are triggered.

The documentation for this subset can be found at https://summit.readme.io/docs.

The features of the language used in these files which are not yet found at usesummit.com:

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


