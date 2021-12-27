# Dockerized xdotool
- Dockerized version for [xdotool](https://github.com/jordansissel/xdotool)
- **xdotool** lets you simulate keyboard input and mouse activity, move and resize windows, etc.
- You can find the current existing Docker images [here](https://hub.docker.com/repository/docker/islomar/xdotool)

## How to use it
- `sh xdootool.sh [command] [arguments]`
- **Examples**: you can find several examples under the folder [examples](./examples/), e.g. how to automatically **bring focus to the browser window where you are following a Google Meet videoconference**.
- **More ideas** for using xdotool
    - https://dev.to/erikaheidi/how-to-set-up-elgatos-stream-deck-on-ubuntu-linux-2110-pdh
    - htps://timothycrosley.github.io/streamdeck-ui/#command
    - https://medium.com/daniels-tech-world/using-xdotool-at-and-bash-to-automate-netflix-and-youtube-viewing-on-linux-5ae62185d1c

## Recommendations
- You can define an alias on your OS that it points to the script [xdotool.sh](xdotool.sh). Previously, you might want to download that script and include it in your `PATH`.

## Development
- For publishing the Docker image you need an account at Docker Hub.
- For scanning the image, you need to install the Docker scan. E.g. for [Ubuntu 20.04](https://ubuntu.pkgs.org/20.04/docker-ce-amd64/docker-scan-plugin_0.7.0~ubuntu-focal_amd64.deb.html)
    - More info about the scan: https://docs.docker.com/engine/scan/

## TO DO
- Add GitHub workflow for scanning.
- Add GitHub workflow for automatically push a new image in case the version has changed...
- Open PR for [xdotools](https://github.com/jordansissel/xdotool): add Dockerfile, integrate the publication in the pipeline and document its use