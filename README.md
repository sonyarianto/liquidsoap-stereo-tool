# liquidsoap-stereo-tool
Liquidsoap + Stereo Tool + Docker + Docker Compose scenario on my CentOS 7 environment. Yeah, any server also OK.

## Scenario
Imaginary radio station called Proper. This radio want to play bunch of songs through Liquidsoap and using Stereo Tool as a audio processor. Running on Linux machine (CentOS 7) on server.

## Ingredients
- Docker
- Docker Compose
- Liquidsoap (run through Docker)
- Stereo Tool (command line version) 64 bit
- Some songs loaded on the songs folder

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
