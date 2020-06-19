---
title: "Middleware"
weight: 5
---

## Create a Middleware

Middleware is a function that receives a `Handle` and returns a `Handle`. Let's take `ServerHeader` as an example, it writes `Server` header and then invokes the next middleware or handler.

```go
func ServerHeader(srv string) clevergo.MiddlewareFunc {
    return func(next clevergo.Handle) clevergo.Handle {
        return func(c *clevergo.Context) error {
            // writes server header.
            c.Response.Header().Set("Server", srv)
            // invokes the next middleware or handler.
            return next(ctx)
        }
    }
}
```

## Global Middleware

```go
app.Use(
    clevergo.Recovery(true), // built-in recovery middleware.
    ServerHeader("CleverGo"),
)
```

## Route Group Middleware

See [Route Group](/docs/routing/route-group).

## Route Middleware

See [Route Middleware](/docs/routing/#route-middleware).

## Third-party Middleware

`WrapHH` is an adapter that converts `func(http.Handler) http.Handler` to a middleware, you can use most of the third-party middleware in CleverGo without a struggle.

```go
app.Use(
    // https://github.com/nytimes/gziphandler
    clevergo.WrapHH(gziphandler.GzipHandler),
)
```
