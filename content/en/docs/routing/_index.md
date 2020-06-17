---
title: "Routing"
linkTitle: "Routing"
weight: 5
---

## Basic Routing

```go
func index(c *clevergo.Context) error {
    return c.String(http.StatusOK, "hello world")
}

func hello(c *clevergo.Context) error {
	return c.String(http.StatusOK, fmt.Sprintf("hello %s", c.Params.String("name")))
}

app := clevergo.New()
app.Get("/", index) // GET /
// app.Handle(http.MethodGet, index) // equals to app.Get.
app.Delete("/", index) // DELETE /
app.Options("/", index) // OPTIONS /
app.Patch("/", index) // PATCH /
app.Post("/", index) // POST /
app.Put("/", index) // PUT /
app.Get("/hello/:name", hello) // GET /hello/foo, GET /hello/bar...
```

## Parameters

### Named Parameters

As you can see, `:name` is a named parameter. The values are accessible via `Context.Params`.

Named parameters only match a single path segment:

Pattern: `/hello/:name`

```text
/hello/foo              match
/hello/bar              match
/hello/foo/bar          no match
```

### Catch-All Parameters

The second type are catch-all parameters and have the form `*name`. Like the name suggests, they match everything. Therefore they must always be at the end of the pattern:

Pattern: `/src/*filepath`

```text
/src/                     match
/src/somefile.go          match
/src/subdir/somefile.go   match
```

### Retrieve Parameters

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

### Raw Path

`Router.UseRawPath` allows to match parameter that contains escaped slash `%2f`.

```go	
router.UseRawPath = true	
```	

## Options

### Route Name

Named route is used to generate URLs, see [URL Generation](/docs/routing/url-generation).

### Route Middleware

`RouteMiddleware` is an option that allows to plug middleware into particular route.

```go
router.Post(
    "/posts",
    createPost,
    clevergo.RouteMiddleware(
        rateLimiter,
        bodyLimiter,
        // ...
    ),
)
```
