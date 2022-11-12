sudo apt update
sudo apt -y install vim \
    python3 \
    python3-pip \
    python-is-python3 \
    software-properties-common \
    wget \
    htop

pip3 install numpy \
    matplotlib \
    seaborn \
    transformers \
    datasets \
    evaluate \
    evaluate[evaluator] \
    zstandard \
    ipywidgets \
    tqdm \
    torch
