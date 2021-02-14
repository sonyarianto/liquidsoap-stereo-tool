# liquidsoap-stereo-tool
Liquidsoap + Stereo Tool + Docker + Docker Compose scenario on my CentOS 7 environment. Yeah, any server also OK.

## Scenario
Imaginary radio station called Proper. This radio want to play bunch of songs through Liquidsoap and using Stereo Tool as a audio processor. Running on Linux machine (CentOS 7) on server.

## Ingredients
- A good server, I am running CentOS 7
- Docker, installation instruction here https://docs.docker.com/get-docker/
- Docker Compose, installation instruction here https://docs.docker.com/compose/install/
- Liquidsoap (run through Docker), I am using `savonet/liquidsoap:master` image, documentation here https://liquidsoap.info
- Stereo Tool (command line version, a file called `stereo_tool_cmd_64`) 64 bit, available at https://www.stereotool.com/download/
- Some songs loaded on the songs folder, in this case folder name is `proper-songs-files`
- An Icecast server (you can use Zeno infrastructure), you can get one free from here https://tools.zenoradio.com/register

## How to run
Run this Docker Compose command.

```
docker-compose up
```

Make sure no error happens.

After feel comfortable and everything runs well, just run this command to put it on the background.

```
docker-compose up -d
```

## Any problem?
Just write an [Issue](https://github.com/sonyarianto/liquidsoap-stereo-tool/issues)
