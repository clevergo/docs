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

router := clevergo.NewRouter()
router.Get("/", index) // GET /
// router.Handle(http.MethodGet, index) // equals to router.Get.
router.Delete("/", index) // DELETE /
router.Options("/", index) // OPTIONS /
router.Patch("/", index) // PATCH /
router.Post("/", index) // POST /
router.Put("/", index) // PUT /
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
        bodyLimit,
        // ...
    ),
)
```
