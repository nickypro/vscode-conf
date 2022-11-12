# Install Mujoco
mkdir ~/.mujoco
wget https://www.roboti.us/download/mujoco200_linux.zip
wget https://www.roboti.us/file/mjkey.txt
unzip mujoco200_linux.zipff
mv mujoco200_linux ~/.mujoco/mujoco200
rm mujoco200_linux.zip
mv mjkey.txt ~/.mujoco/
