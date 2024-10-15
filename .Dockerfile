
RUN apt-get update && apt-get install -y curl && apt-get clean
RUN cd ~
RUN curl -O https://repo.anaconda.com/archive/Anaconda3-2024.02-1-Linux-x86_64.sh && bash Anaconda3-2024.02-1-Linux-x86_64.sh
RUN apt install nvidia-driver-535
