--- 
layout: post
title: "Getting Octoprint Running in Ubuntu 16.04 with Docker"
date: 2017-08-07 11:30:38 -0700
---

{% include links.html %}

Octoprint is a great little piece of software for managing your prints. It is especially awesome if you have a webcam set up to do timelapses and watch your prints.

Most people control this with OctoPi, but I wanted to do it with Docker on my ubuntu machine. I'm going to assume you already have docker and docker-compose installed, and know how to use command-line utilities like `git`.

```bash
git clone https://github.com/hjhart/octoprint_plus_mjpg_streamer_docker
cd octoprint_plus_mjpg_streamer_docker
```

Now, make sure your printer is located at `/dev/ttyUSB0` and your webcam is located at `/dev/video0`. If they're not you'll need to modify the `docker-compose.yml` file.

If you're all set up, then run:

```bash
docker-compose up
```

If your devices aren't set up properly you'll see an error message like this:

```
ERROR: for octoprintplusmjpgstreamerdocker_mjpg_streamer_1  Cannot start service mjpg_streamer: linux runtime spec devices: error gathering device information while adding custom device "/dev/video0": lstat /dev/video0: no such file or directory
ERROR: for octoprint  Cannot start service octoprint: linux runtime spec devices: error gathering device information while adding custom device "/dev/ttyUSB0": lstat /dev/ttyUSB0: no such file or directory
```

If things appear to be running happily, navigate to 127.0.0.1:5000 (replace 127.0.0.1 with $DOCKER_HOST). Octoprint and your webcam should be all set up, and you can print with timelapses already set up.

This might be a little slow to build because I haven't pushed any images to docker-hub yet. If anyone wants them, I can do so.

If you have any issues or questions, create an [issue on github](https://github.com/hjhart/octoprint_plus_mjpg_streamer_docker/issues). Happy printing!
