---
title: "Handler"
weight: 20
---

Request handler is a `Handle` function that receives a [Context](/en/basics/context) instance and write response to client.

```go
func hello(c *clevergo.Context) error {
	return c.String(http.StatusOK, "hello world")
}
```
