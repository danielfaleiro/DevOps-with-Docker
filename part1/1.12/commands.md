# Exercise 1.12

## backend

```
docker run --rm -p 8000:8000 -v $(pwd)/logs.txt:/logs.txt backend-example
```

## frontend

```
docker run --rm -p 5000:5000 frontend-example
```