#  Question
Run docker in a container while sharing the image cache with the host. This will improve the efficiency of the container in size and speed because it will share resoures with the host docker engine.

You can demonstrate this to yourself comparing docker images from inside the container with your host images.

#### Answer:

`docker run -it --rm -v /var/run/docker.sock:/var/run/docker.sock docker sh`