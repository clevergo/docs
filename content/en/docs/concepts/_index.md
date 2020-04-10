---
title: "Concepts"
linkTitle: "Concepts"
weight: 4
---

## Handle

`Handle` is a request handler, it receives a [context](#context) instance, and write response to client:

```go
func home(ctx *clevergo.Context) error {
	return ctx.String(http.StatusOK, "hello world")
}
```

If something wrong, either return the error to [Error Handler](/docs/error-handling), or write error response directly and then return `nil`.

See [Routing](/docs/routing) for registering request handlers.

## Context

`Contexnt` is a wrapper of `*http.Request` and `http.ResponseWriter`.

See [Request](/docs/request) and [Response](/docs/response).
