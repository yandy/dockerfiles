# dockerfiles


### you-get

```ps1
docker run -v $PWD/:/download --rm -it yandy0725/you-get
```

```bash
docker run -v $(pwd)/:/download --rm -it yandy0725/you-get
```

### ffmpeg

```ps1
docker run -v $PWD/:/download --rm --entrypoint ffmpeg -it yandy0725/you-get
```

```bash
docker run -v $(pwd)/:/download --rm --entrypoint ffmpeg -it yandy0725/you-get
```

### Stable Diffusion WebUI

```ps1
docker run --gpus all -p 8086:8086 -v $PWD/outputs:/opt/sdweb/stable-diffusion-webui/outputs -v $PWD/extensions:/opt/sdweb/stable-diffusion-webui/extensions -v $PWD/models:/opt/sdweb/stable-diffusion-webui/models -v $PWD/embeddings:/opt/sdweb/stable-diffusion-webui/embeddings --rm -it yandy0725/sdweb:latest -- webui.sh --skip-install --listen --port 8086
```

```bash
docker run --gpus all -p 8086:8086 -v $(pwd)/outputs:/opt/sdweb/stable-diffusion-webui/outputs -v $(pwd)/extensions:/opt/sdweb/stable-diffusion-webui/extensions -v $(pwd)/models:/opt/sdweb/stable-diffusion-webui/models -v $(pwd)/embeddings:/opt/sdweb/stable-diffusion-webui/embeddings --rm -it yandy0725/sdweb:latest -- webui.sh --skip-install --listen --port 8086```
