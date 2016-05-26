This is a implementation of the paper
"A Neural Algorithm of Artistic Style" by Leon A. Gatys, Alexander S. Ecker, and Matthias Bethge
[http://arxiv.org/abs/1508.06576](http://arxiv.org/abs/1508.06576)

Source code by jcjohnson
[https://github.com/jcjohnson/neural-style](https://github.com/jcjohnson/neural-style)

Docker image by kChen
[https://hub.docker.com/r/kchentw/neural-style/](https://hub.docker.com/r/kchentw/neural-style/)

# Setup
```bash
docker pull kchentw/neural-style
```

# Run

First you have to connect to the docker container:

```bash
docker run -i -t kchentw/neural-style /bin/bash
```

you should then be able to copy the files to the container:

```bash
docker cp <img_folder> <container name>:/root/neural-style/
```

you can find container name with ``docker ps`` command. Then you should be able
to run the algorithm itself:

```bash
cd ~/neural-style
th neural_style.lua -gpu -1 -style_image  <image.jpg> -content_image <image.jpg>
```

Lastly you will want to copy the processed files from the container:

```bash
docker cp <container name>:/root/neural-style/  imgs
```
