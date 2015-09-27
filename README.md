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
```bash
cd ~/neural-style
th neural_style.lua -gpu -1 -style_image  <image.jpg> -content_image <image.jpg>
```

