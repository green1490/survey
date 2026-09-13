# Architecture

```mermaid
architecture-beta
  service pg(database)[postgres]
  service redis(database)[redis]
  service hub(server)[formbricks hub]
  service app(server)[formbricks application]
  
  hub:B -- T:redis
  hub:B -- T:pg
  app:L -- R:hub

  align row redis pg
```
