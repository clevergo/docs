---
title: "Quick Start"
linkTitle: "Quick Start"
weight: 1
date: 2020-04-08T10:44:52+08:00
---

## Installation

```shell
go get -u clevergo.tech/clevergo
```

## Example

```go
package main

import (
	"fmt"

	"clevergo.tech/clevergo"
)

func home(c *clevergo.Context) error {
	return c.String(http.StatusOK, "hello world")
}

func hello(c *clevergo.Context) error {
	return c.String(http.StatusOK, fmt.Sprintf("hello %s", c.Params.String("name")))
}

func main() {
	app := clevergo.New()
	app.Get("/", home)
	app.Get("/hello/:name", hello)
	app.Run(":8080")
}
```

```shell
$ curl http://localhost:8080/
hello world

$ curl http://localhost:8080/hello/foobar
hello foobar
```
