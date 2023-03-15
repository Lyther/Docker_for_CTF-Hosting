# README.md

Nodejs image would install dependencies for you.

## FQA

Q: why my nodejs admin bot can't access website?

A: install chromium for nodejs. Add following lines to `Dockerfile`:

```dockerfile
RUN apt-get update
RUN apt-get install -y chromium
```

