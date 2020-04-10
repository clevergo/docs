---
title: "路由組"
weight: 1
---

```go
api := router.Group("/api", clevergo.RouteGroupMiddleware(
	// API 中間件，比如 CORS、身份認證、授權認證。
	clevergo.WrapHH(cors.Default().Handler), // https://github.com/rs/cors
))

apiV1 := api.Group("/v1", clevergo.RouteGroupMiddleware(
    // middleware for v1's APIs
))

apiV2 := api.Group("/v2", clevergo.RouteGroupMiddleware(
    // middleware for v2's APIs
))
```
