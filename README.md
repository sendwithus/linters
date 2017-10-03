# Linters


## Flake8

Dockerized flake8 linter.

```bash
docker run --rm \
    -v "$PWD":/usr/app \
    -w /usr/app \
    sendwithus/flake8 \
    flake8 --ignore=E501 --exclude=src/*_pb.py src tests
```

## Gometalinter

Dockerized gometalinter.

```bash
docker run --rm \
  -v "$PWD":/go/src/github.com/sendwithus/service \
  -w /go/src/github.com/sendwithus/service \
  sendwithus/gometalinter \
    --fast \
    --deadline=120s \
    --vendor \
    --config=scripts/lint.json ./...
```

## GopkgLinter

Ensures that you aren't using feature branches in your projects.

```bash
docker run --rm -i -v "$PWD":/app sendwithus/gopkglinter /app/Gopkg.toml
```