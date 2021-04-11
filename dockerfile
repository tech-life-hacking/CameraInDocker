FROM tensorflow/tensorflow:1.14.0-gpu-py3

RUN apt-get update && apt-get install -y git \
    libffi-dev \
    libssl-dev \
    libsm6 \
    libxext6 \
    libxrender-dev \
    libgl1-mesa-dev

RUN pip install -U pip

RUN pip install opencv-python opencv-contrib-python