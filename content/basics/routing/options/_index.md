---
title: "Route Options"
linkTitle: "Options"
weight: 20
---

Router allows specifying options for a route.

```go
router.Get("/", index, 
    opt1, 
    opt2,
    // ...
)
```

## Route Name

`RouteName` is used to generate URLs, checkout [URL Generation](/en/routing/url-generation) for details.

## Route Middleware

`RouteMiddleware` is an option that allows plugging middleware into particular route.

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
