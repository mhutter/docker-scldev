# scldev docker container

Docker container to help developing [sclorg] s2i containers on non-linux
systems.

## Usage

```sh
docker run -it --rm \
  -v /var/run/docker.sock:/var/run/docker.sock \
  -v "$(pwd):/work" \
  mhutter/scldev
```

[sclorg]: https://github.com/sclorg
