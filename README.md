# dockerfiles


### you-get

```ps1
docker run -v $PWD/:/download --rm -it yandy0725/you-get
```

```bash
docker run -v $pwd/:/download --rm -it yandy0725/you-get
```

### ffmpeg

```ps1
docker run -v $PWD/:/download --rm --entrypoint ffmpeg -it yandy0725/you-get
```

```bash
docker run -v $pwd/:/download --rm --entrypoint ffmpeg -it yandy0725/you-get
```

### Stable Diffusion WebUI

```ps1
docker run --gpus all -p 8086:8086 -v $PWD/tmp:/tmp/sdweb -v $PWD/models:/opt/sdweb/stable-diffusion-webui/models --rm -it yandy0725/sdweb:latest -- webui.sh --skip-install --listen --port 8086
```

```bash
docker run --gpus all -p 8086:8086 -v $pwd/tmp:/tmp/sdweb -v $pwd/models:/opt/sdweb/stable-diffusion-webui/models --rm -it yandy0725/sdweb:latest -- webui.sh --skip-install --listen --port 8086
```
