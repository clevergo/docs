---
title: "路由组"
weight: 1
---

```go
api := router.Group("/api", clevergo.RouteGroupMiddleware(
	// API 中间件，比如 CORS、身份认证、授权认证。
	clevergo.WrapHH(cors.Default().Handler), // https://github.com/rs/cors
))

apiV1 := api.Group("/v1", clevergo.RouteGroupMiddleware(
    // middleware for v1's APIs
))

apiV2 := api.Group("/v2", clevergo.RouteGroupMiddleware(
    // middleware for v2's APIs
))
```
