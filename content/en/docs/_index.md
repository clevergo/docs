
---
title: "Documentation"
linkTitle: "Documentation"
weight: 20
menu:
  main:
    weight: 20
---

CleverGo is a <strong>lightweight</strong>, <strong>high performance</strong> and <strong>feature rich</strong> HTTP web framework written in Go.

In fact, it's not an out of the box framework, it provides many decoupling packages that allow you to customize your application from scratch. Maybe we will provide a customized framework out of the box in the future, but there is no guarantee when it will be completed.

## Features

- **High Performance:** extremely fast, see [Benchmark](/docs/benchmark).
- **Gradual learning curve:** you can learn the entire usages by going through the documentation in half an hour.
- **[Reverse Route Generation](/docs/routing/url-generation):** allow generating URL by named route or matched route.
- **[Route Group](/docs/routing/route-group):** as known as subrouter.
- **Friendly to APIs:** it is easy to design RESTful APIs and versioning your APIs by route group.
- **[Middleware](/docs/middleware):** plug middleware in route group or particular route, supports global middleware as well. Compatible with most of third-party middleware.
- ...

## Comparison with other frameworks

### CleverGo vs HTTPRouter

CleverGo is an enhanced version of HTTPRouter that provides extra features, such as URL generation, group router, easy to integrate with third party middleware etc.

#### Why not contribute to the original repository?

- Slow maintenance, such as the PR of [subrouter](https://github.com/julienschmidt/httprouter/pull/89) is still unaccepted.
- Missing some useful features, such as URL generation, group router.
- Compatibility is broken due to the introduction of some features.

No matter what, there is no doubt that [HTTPRouter](https://github.com/julienschmidt/httprouter) is an excellent package.

### CleverGo vs Echo and Gin

Both of Echo and Gin are popular, high performance and full features web frameworks.

**Advantages**

- Performance: As a HTTP router, CleverGo is faster than Gin and Echo.

**Disadvantages**

- Community: Both of Echo and Gin have a large community and users.

