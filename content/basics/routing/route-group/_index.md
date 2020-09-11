---
title: "Route Group"
weight: 40
---

```go
api := router.Group("/api", clevergo.RouteGroupMiddleware(
	// middleware for APIs, such as CORS, authenticator, authorization.
	clevergo.WrapHH(cors.Default().Handler), // https://github.com/rs/cors
))

apiV1 := api.Group("/v1", clevergo.RouteGroupMiddleware(
    // middleware for v1's APIs
))

apiV2 := api.Group("/v2", clevergo.RouteGroupMiddleware(
    // middleware for v2's APIs
))
```
