# Ubuntu as base image
FROM nvidia/cuda:11.8.0-base-ubuntu22.04

# set front end to non interactive
ENV DEBIAN_FRONTEND=noninteractive

# Update package list and install dependencies
RUN apt-get update && apt-get install -y \
	curl \
	git \
	vim \
	nano \
	python3 \
	python3-pip \
	&& rm -rf /var/lib/apt/lists/*

# Upgrade pip 
RUN pip3 install --upgrade pip

# Instal pytorch with CUDA 11.8 support
RUN pip3 install torch torchvision torchaudio --extra-index-url https://download.pytorch.org/whl/cu118
RUN ln -s /usr/bin/python3 /usr/bin/python

# Set working director inside the container
WORKDIR /app

# Copy files from host to container
COPY . /app

# Set entry to bash
ENTRYPOINT ["/bin/bash"]
