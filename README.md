# dockerfiles


### you-get

```pwsh
docker run -v $PWD/:/download --rm -it yandy0725/you-get
```

```bash
docker run -v $pwd/:/download --rm -it yandy0725/you-get
```

### ffmpeg

```pwsh
docker run -v $PWD/:/download --rm --entrypoint ffmpeg -it yandy0725/you-get
```

```bash
docker run -v $pwd/:/download --rm --entrypoint ffmpeg -it yandy0725/you-get
```

### stable-diffusion-webui

```
docker run -v $PWD/:/tmp/sdwebui --rm -it yandy0725/stable-diffusion-webui --ckpt /tmp/sdwebui/xxx.ckpt
```
