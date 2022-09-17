# VRising Dedicated Server in Docker
## Build
```
docker build -t vrising_server:latest .
```
## Required Volumes
To launch a server with custom configs you will need to mount a few folders.
* save data to /vrising/save-data
* game presets to /vrising/VRisingServer_Data/StreamingAssets/GameSettingsPresets
* settings to /vrising/VRisingServer_Data/StreamingAssets/Settings
* log folder to /vrising/logs

Please see the `docker-compose.yml` file for an example.

## Start up the container
```
docker-compose up -d
```

## Stop Server
```
docker-compose down
```
