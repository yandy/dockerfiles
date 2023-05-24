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
docker run --gpus all -v $PWD/:/tmp/sdweb --rm -it yandy0725/sdweb:latest webui.sh
```

```bash
docker run --gpus all -v $pwd/:/tmp/sdweb --rm -it yandy0725/sdweb:latest webui.sh
```
