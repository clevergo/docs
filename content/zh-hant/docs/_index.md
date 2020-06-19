---
title: "文檔"
linkTitle: "文檔"
weight: 20
menu:
  main:
    weight: 20
---

CleverGo 一個用 Go 語言編寫的<strong>輕量級</strong>、<strong>高性能</strong>和<strong>功能豐富</strong>的 HTTP Web 開發框架。

事實上，其不是一個開箱即用的框架，其提供了許多解藕的包可以讓你從頭開始自由定制你的應用。或許以後我們會提供一個開箱即用的定制框架，但是不保證何時完成。

## 特性

- **高性能：** 速度極快，參閱[基準測試](/zh-hant/docs/benchmark)。
- **平緩的學習曲線：** 所有文檔可在半小時內閱讀完畢。
- **[反向路由生成](/zh-hant/docs/routing/url-generation)：** 可以通過命名路由或匹配路由生成 URL。
- **[路由組](/zh-hant/docs/routing/route-group)：** 亦稱子路由。
- **對 RESTful APIs 友好：** 很容易設計 RESTful APIs 和通過路由組對 APIs 進行版本化。
- **[中間件](/zh-hant/docs/middleware)：** 可以在路由組或特定路由插入中間件，也支持全局中間件，兼容大部分第三方中間件。
- ...

## 對比其他框架

### CleverGo vs HTTPRouter

CleverGo 是 HTTPRouter 的增強版本，其提供額外的特性，比如 URL 生成、路由組、易於整合第三方中間件等。

#### 為何不向原倉庫貢獻？

- 維護緩慢，比如[路由組]((ttps://github.com/julienschmidt/httprouter/pull/89)的 PR 仍處於未合並狀態。
- 缺少壹些常用的特性，比如 URL 生成、路由組。
- 由於引入了壹些特性而破壞了兼容性。

無論如何，毫無疑問 [HTTPRouter](https://github.com/julienschmidt/httprouter) 是壹個優秀的包。

### CleverGo vs Echo and Gin

Echo 和 Gin 都是流行的、高性能和全功能的 Web 框架。

**優點**

- 性能：作為壹個 HTTP 路由，CleverGo 的性能高於 Gin 和 Echo。

**缺點**

- 社區：Echo 和 Gin 都有壹個龐大的社區和用戶群體。
