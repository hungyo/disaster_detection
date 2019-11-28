# Install before running

* python3
* pip3

# packages to be installed

* grpcio
* grpcio-tools
* imgaug
* h5py
* tensorflow-gpu
* keras

# Build the docker :
```
docker build --build-arg http_proxy="" --build-arg https_proxy="" -t <image_name> .
```

 Or you can pull the already build docker
```
docker pull hungyo/natural_disaster:latest
```
# To run the container :
```
docker run -itd -v <volume map> --runtime=nvidia --network=host hungyo/natural_disaster:latest
```
