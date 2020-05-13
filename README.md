# google-codelabs

## Development

Build a docker image

```
docker-compose build
```

Transfer node_modules to your host machine

```
docker-compose run --rm app npm install
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

## Deployment

Build packages for distribution

```
docker-compose exec app claat export -o build_codelabs codelabs/*.md
rm -rf mv ./build_codelabs/codelab-4-codelab-markdown
docker-compose exec app gulp dist --codelabs-dir=build_codelabs
```

Deploy packages to S3

```
rm -f ./dist/codelabs
mv ./build_codelabs ./dist/codelabs
aws s3 sync --delete ./dist s3://<s3bucket>
```
