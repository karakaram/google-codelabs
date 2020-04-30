# google-codelabs

## Usage

Build a docker image

```
docker-compose build
```

Export Codelabs

```
docker-compose run --rm app claat export -o build_codelabs codelabs/*.md
```

Start a web server

```
docker-compose up
```

Visit http://localhost:8000 on your web browser.
