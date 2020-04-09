---
title: "静态文件"
date: 2020-04-09T10:53:41+08:00
---

```go
router.ServeFiles("/assets/*filepath", http.Dir("/path/to/assets"))
```

其将请求路径 `/assets/*filepath` 映射到目录 `/path/to/assets`:

- `GET /assets/css/app.css` => `/path/to/assets/css/app.css`
- `GET /assets/js/app.js` => `/path/to/assets/js/app.js`
- ...

我们也可以将 `http.FileServer` 作为 `NotFound` 处理器, 比如 `/robots.txt`, `/favicon.ico`.

```go
router.NotFound = http.FileServer(http.Dir("public"))
```
