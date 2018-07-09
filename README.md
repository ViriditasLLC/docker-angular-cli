# Dockerfile with Angular CLI

Node 8.11 + Angular CLI 6.0.0+

Find [the image here](https://hub.docker.com/r/johnpapa/angular-cli/)

Pulling the image

```bash
docker pull <user-name>/angular-cli
```

Using the image in a `Dockerfile`

```bash
FROM johnpapa/angular-cli
```

Using this file to make a Dockerimage
```bash
docker build -t node-angular-cli:latest .

# then
docker push <user-name>/node-angular-cli

```
