---
title: "Error Handling"
linkTitle: "Error Handling"
weight: 10
date: 2020-04-08T10:44:52+08:00
---

Error Handler allow to record error and format error response, it recieves a context and an error that returns by middleware or final handler.

```go
package main

import (
	"html/template"
	"log"
	"net/http"

	"github.com/clevergo/clevergo"
)

type ErrorHandler struct {
	tmpl *template.Template
}

func NewErrorHandler(tmpl *template.Template) *ErrorHandler {
	return &ErrorHandler{
		tmpl: tmpl,
	}
}

func (h *ErrorHandler) Handle(ctx *clevergo.Context, err error) {
	// write error to log.
	log.Println(err)

	format := ctx.QueryParam("format")
	if format == "json" {
		ctx.JSON(http.StatusOK, map[string]interface{}{
			"message": err.Error(),
		})
		return
	}

	// displays an error page.
	h.tmpl.Execute(ctx.Response, err)
}

func main() {
	tmpl := template.Must(template.New("error").Parse(`<html><body><h1>{{ .Error }}</h1></body></html>`))
	router := clevergo.NewRouter()
	router.ErrorHandler = NewErrorHandler(tmpl)
	http.ListenAndServe(":8080", router)
}
```

```shell
$ curl http://localhost:8080/404             
<html><body><h1>404 page not found</h1></body></html>                                                

$ curl "http://localhost:8080/404?format=json"
{"message":"404 page not found"}                 
```
