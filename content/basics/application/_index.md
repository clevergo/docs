---
title: "Application"
weight: 10
---

`Application` is a root router that implemented `http.Handler` interface.

## Usage

```go
app := clevergo.New()
app.Get("/", func(c *clevergo.Context) error {
    return c.String(http.StatusOK, "Hello, World!")
})
app.Run(":8080")
```

1. Create an application.
1. Register a `GET` request handler.
1. Start a HTTP service that listening on `8080` port.

{{% notice tip %}}
`New` creates an Application which enables **Logging**, **ErrorHandler**, **Recovery** and **ServerHeader** middlewares.
You can also create a pure Application without any middlewares via `Pure`.
{{% /notice %}}


## Middldeware

Middleware can be plugged into the Application via `Use` method.

```go
app.Use(
    middlewareFoo,
    middlewarebar,
    // ...
)
```

Checkout the [Middleware](/en/basics/middleware) for details.

## Start Server

### HTTP

```go
app.Run(addr)
```

### HTTPS

```go
app.Run(addr, certFile, keyFile)
```

### Unix

```go
app.RunUnix("/tmp/app.sock")
```
