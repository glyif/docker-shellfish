<img src="https://www.holbertonschool.com/assets/holberton-logo-1cc451260ca3cd297def53f2250a9794810667c7ca7b5fa5879a569a457bf16f.png" alt="Holberton logo">

# Shellfish Docker Wrapper
## Author: Bobby Yang (Batch 2)

## Synopsis
The Shellfish Docker Wrapper is a Docker image made to run tests for the simple_shell assignment. The reason for building this image is to make sure everyone is checking on the same exact environment.

## File Breakdown
### Dockerfile
The Dockerfile contains a simple set of instructions for Docker during build time and runtime.

### init.sh
This cript is a script, copied into the image that clones your shell repo, compiles it with all of the flags, clones the checker repo, moves your shell executable into the checker folder then runs the checker.

## Prerequisites
The only prerequisite is to install docker. You can have this running in your vagrant or on your local host because it uses a container, it will not mess with your system and everytime you run the tests a new container will be started so you do not have to worry about any system issues.

To install Docker, please refer to the Docker install manuals. Just google: install docker

## Use
After you have installed docker please follow the following instructions.

You can either pull from Docker Hub or you can clone this repo yourself and build it.

### Docker Hub
NOTE: THIS METHOD REQUIRES YOU TO HAVE A DOCKER HUB ACCOUNT

```bash
$ docker login
$ docker pull glyif/shellfish-docker
$ docker image (OR docker image ls if you are on mac)

# Copy the IMAGE ID of the glyif/shellfish-docker image.
```

To run the tests
```bash
$ docker run -ti --rm IMAGEID GITHUBUSR
# IMAGEID is the image ID you copied
# GITHUBUSR is the github user that the simple_shell is on
```

After initial build, you will not need to run the build again unless there's an update on the image which you'll be notified about.

### Manual build (START)
```bash
$ git clone https://github.com/glyif/docker-shellfish.git
$ cd docker-shellfish.git
$ docker build .

# Copy the last ID, which will be something like Successfully built ________
```

To run the tests
```bash
$ docker run -ti --rm IMAGEID GITHUBUSR
# IMAGEID is the image ID you copied
# GITHUBUSR is the github user that the simple_shell is on
```

## TODO
- [ ] Get [@Julien Barbier](https://github.com/jbarbier) to say I did a good job ;)


