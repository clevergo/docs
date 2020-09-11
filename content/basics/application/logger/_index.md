---
title: "Logger"
weight: 20
tags: ["logger", "logging"]
---

`Application` defines a generic [logger](https://github.com/clevergo/log).

## Zap

```go
import "go.uber.org/zap"
```

```go
app := clevergo.New()
app.Logger = zap.NewExample().Sugar()
```

## Logrus

```go
import "github.com/sirupsen/logrus"
```

```go
app := clevergo.New()
app.Logger = logrus.New()
```

## Usage

After registering logger, you can access the logger by `Context.Logger()` in middleware or handler.

```go
func handle(c *clevergo.Context) error {
	c.Logger().Debug("debug msg")
	c.Logger().Debugf("debugf msg")
	c.Logger().Info("debug")
	c.Logger().Infof("debugf")
	c.Logger().Warn("warn msg")
	c.Logger().Warnf("warnf msg")
	c.Logger().Error("error msg")
	c.Logger().Errorf("errorf msg")
	// c.Logger().Fatal("fatal msg")
	// c.Logger().Fatalf("fatalf msg")
	return nil
}
```
