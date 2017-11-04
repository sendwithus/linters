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

## Goimportslinter

Ensure that goimports have been run. MUST BE MOUNTED INSIDE THE GOPATH IN THE CONTAINER

```bash
docker run \
  -v "$PWD":/go/src/github.com/sendwithus/project_name \
  -w /go/src/github.com/sendwithus/project_name \
  sendwithus/goimportslinter:latest
```


## Python 2.7

Enforces [PEP8](http://pep8.org/) style.

```bash
docker run --rm \
  -v "$PWD"/src:/usr/src \
  -w /usr/src \
  sendwithus/linter-python-2.7:latest
```
