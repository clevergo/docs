---
title: "Routing"
weight: 40
---

{{% notice tip %}}
Before introducing routing, you need to understand the concept of [Handler](/en/basics/handler) and [Context](/en/basics/context).
{{% /notice %}}

Firstly, we need create a router. Let's take `Application` as example.

```go
router := clevergo.New()
````

## GET

```
router.Get("/", index) // GET /
router.Get("/hello", hello) // GET /hello
router.Get("/users", queryUsers) // GET /users
router.Get("/users/:id", queryUser) // GET /users/1, GET /users/2
```

## POST

```go
router.Post("/users", createUser) // POST /users
```

## PUT

```go
router.Put("/users/:id", updateUser) // PUT /users/1, PUT /users/2
```

## PATCH

```go
router.Patch("/users/:id", updateUser) // PATCH /users/1, PATCH /users/2
```

## DELETE

```go
router.Delete("/users/:id", deleteUser) // DELETE /users/1, DELETE /users/2
```

## OPTIONS

```go
router.Options("/users", options) // OPTIONS /users
router.Options("/users/:id", options) // OPTIONS /users/1, OPTIONS /users/2
```

## HEAD

```go
router.Head("/users", head) // HEAD /users
```

## Any

`Any` matches **ALL** request methods.

```go
// GET /posts
// POST /posts
// ...
router.Any("/posts", postHandler)

// GET /posts/1
// POST /posts/1
// DEELTE /posts/1
// PUT /posts/1
// PATCH /posts/1
// ...
router.Any("/posts/:id", postHandler)
```

## Static Files

```go
router.ServeFiles("/assets", http.Dir("/path/to/assets"))
```

## Other

You can also register handler for other HTTP request methods via `Handle`.

```go
router.Handle(http.MethodGet, "/", index) // equals to router.Get
```
