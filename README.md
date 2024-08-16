# FastAPI Serverless Tester

## Pre-requisites

- Python 3.12.x
- Poetry 1.8.x

## Tools and Frameworks

- [x] FastApi
- [x] Uvicorn
- [x] pytest
- [x] pre-commit
- [x] ruff

## Install dependencies

```
poetry install
```

## Install pre-commit hooks

```
pre-commit install
```

## Commands

Start local server
```
make start-local
```

Lint
```
make lint
```

Lint and fix
```
make lint-fix
```

Format
```
make format
```

Launch tests
```
make test
```

Launch test with coverage
```
make coverage
```

Run pre-commit hooks
```
make pre-commit
```