---
title: "Route Parameters"
linkTitle: "Parameters"
weight: 10
---

Router can recognize two forms of parameters, one is **named parameter**, the other one is **wildcard parameter**.

## Named Parameter

```go
router.Get("/posts/:year/:month/:title", func(c *clevergo.Context) error {
	return c.String(http.StatusOK, fmt.Sprintf("title %s, year: %s, month: %s",
		c.Params.String("title"),
		c.Params.String("year"),
		c.Params.String("month"),
	))
})
```

As you can see, `:name` is a named parameter. It's values can be retrieved via `Context.Params`.

{{% notice note %}}
Named parameters match only one single path segment.
{{% /notice %}}

Pattern: `/hello/:name`

```text
/hello/foo              matched
/hello/bar              matched
/hello/foo/bar          unmatched
```

## Wildcard Parameter

The other parameter form is wildcard parameter which have the form `*name`. Like the name suggests, they match everything. Therefore, they must always be at the end of the pattern.

```go
router.Get("/static/*filepath", func(c *clevergo.Context) error {
	return c.String(http.StatusOK, fmt.Sprintf("filepath: %s", c.Params.String("filepath")))
})
```

```text
/static/                    match
/static/css/app.css         match
/static/js/app.js           match
```

## Retrieve Parameters

All parameters are stored in `Context.Params`.

```go
func params(c *clevergo.Context) error {
	name := c.Params.String("name")
	page, err := c.Params.Int("page")
	num, err := c.Params.Int64("num")
	amount, err := c.Params.Uint64("amount")
	enable, err := c.Params.Bool("enable")
	price, err := c.Params.Float64("price")
	return err
}
```

## Raw Path

`Router.UseRawPath` allows matching parameters that contains escaped slash `%2f`.

```go	
router.UseRawPath = true
```
