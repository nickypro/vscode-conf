# Annoying open ai safety gym stuff
# Install python3.7
sudo add-apt-repository ppa:deadsnakes/ppa
sudo apt install python3.7
source env37/bin/

# Install mujoco prerequisites
sudo apt-get -q install -y \
    libosmesa6-dev \
    libgl1-mesa-glx \
    libglfw3 \
    libgl1-mesa-dev \
    libglew-dev \
    patchelf \
    unzip \
    libopenmpi-dev


# ldlib or something
echo "$HOME/.mujoco/mujoco200/bin" > /etc/ld.so.conf.d/mujoco_ld_lib_path.conf
ldconfig

# install mujoco in python3.7
conda activate s3
pip3 install -U 'mujoco-py<2.1,>=2.0'
pip3 install protobuf==3.20.*

git clone https://github.com/openai/safety-gym.git
cd safety-gym
pip install -e .
