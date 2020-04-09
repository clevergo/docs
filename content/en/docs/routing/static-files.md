---
title: "Static Files"
date: 2020-04-09T10:53:41+08:00
---

```go
router.ServeFiles("/assets/*filepath", http.Dir("/path/to/assets"))
```

It maps request path `/assets/*filepath` to directory `/path/to/assets`:

- `GET /assets/css/app.css` => `/path/to/assets/css/app.css`
- `GET /assets/js/app.js` => `/path/to/assets/js/app.js`
- ...

Sometimes, it is useful to treat `http.FileServer` as `NotFound` handler, such as `/robots.txt`, `/favicon.ico`.

```go
router.NotFound = http.FileServer(http.Dir("public"))
```
