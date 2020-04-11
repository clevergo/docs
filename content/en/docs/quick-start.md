---
title: "Quick Start"
linkTitle: "Quick Start"
weight: 1
date: 2020-04-08T10:44:52+08:00
---

## Installation

```
go get github.com/clevergo/clevergo
```

## Example

```go
package main

import (
	"fmt"
	"net/http"

	"github.com/clevergo/clevergo"
)

func home(ctx *clevergo.Context) error {
	return ctx.String(http.StatusOK, "hello world")
}

func hello(ctx *clevergo.Context) error {
	return ctx.String(http.StatusOK, fmt.Sprintf("hello %s", ctx.Params.String("name")))
}

func main() {
	router := clevergo.NewRouter()
	router.Get("/", home)
	router.Get("/hello/:name", hello)
	http.ListenAndServe(":8080", router)
}
```

```shell
$ curl http://localhost:8080/
hello world

$ curl http://localhost:8080/hello/foobar
hello foobar
```
