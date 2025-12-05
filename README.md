# Prism-PSY

Tool implementation of Prism-PSY.
Source code from the `develop-ocl-paper` branch of [Prism-pse](https://github.com/Palmik/prism-pse/tree/develop-ocl-paper).

Documentation can be found on the [website](http://www.prismmodelchecker.org/psy/).


## Docker image

Build the Docker image with
```
docker build -t prism-pse . --platform linux/amd64
```
The parameter `--platform linux/amd64` is only needed an ARM machines.

When the build is successuful, the image can be run with:
```
docker run -it --platform linux/amd64 prism-pse
```


