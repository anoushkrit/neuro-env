``` bash
sudo docker run \
>   --shm-size=1gb -it --privileged --user=root --name neurodesktop \
>   -v ~/neurodesktop-storage:/neurodesktop-storage \
>   --mount source=neurodesk-home,target=/home/jovyan \
>   -e NB_UID="$(id -u)" -e NB_GID="$(id -g)" \
>   -p 8888:8888 \
>   -e NEURODESKTOP_VERSION=2024-05-25 vnmd/neurodesktop:2024-05-25
```
