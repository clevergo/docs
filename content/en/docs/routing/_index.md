---
title: "Routing"
linkTitle: "Routing"
weight: 5
---

## Basic Routing

```go
func index(ctx *clevergo.Context) error {
    return ctx.String(http.StatusOK, "hello world")
}

func hello(ctx *clevergo.Context) error {
	return ctx.String(http.StatusOK, fmt.Sprintf("hello %s", ctx.Params.String("name")))
}

router := clevergo.NewRouter()
router.Get("/", index) // GET /
// router.Handle(http.MethodGet, index) // equals to router.Get.
router.Delete("/", index) // DELETE /
router.Options("/", index) // OPTIONS /
router.Patch("/", index) // PATCH /
router.Post("/", index) // POST /
router.Put("/", index) // PUT /
router.Get("/hello/:name", hello) // GET /hello/foo, GET /hello/bar...
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
func params(ctx *clevergo.Context) error {
	name := ctx.Params.String("name")
	page, err := ctx.Params.Int("page")
	num, err := ctx.Params.Int64("num")
	amount, err := ctx.Params.Uint64("amount")
	enable, err := ctx.Params.Bool("enable")
	price, err := ctx.Params.Float64("price")
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
