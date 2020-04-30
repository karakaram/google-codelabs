# google-codelabs

## Usage

Build a docker image

```
docker build . -t karakaram/claat
```

Export contents

```
docker run --rm -v `pwd`:/root/work -w /root/work karakaram/claat export codelabs/*.md
```

Start a web server

```
docker run --rm -v `pwd`:/root/work -w /root/work -p 9090:9090 karakaram/claat serve -addr 0.0.0.0:9090
```

Visit http://localhost:9090/how-to-write-a-codelab/ on your web browser.
