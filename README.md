# dedicated-local-ai-server

## 1. Install Ubuntu with ssh server
- Install ssh server
- Don't install docker with snap

## 2. Expand the partition on the disk
  see https://askubuntu.com/a/1330709
*     sudo vgdisplay
*     sudo lvextend -l +100%FREE /dev/mapper/ubuntu--vg-ubuntu--lv
*     sudo resize2fs /dev/mapper/ubuntu--vg-ubuntu--lv
*     sudo apt update && sudo apt upgrade
*     sudo reboot
## 3. Install docker
  see https://linuxiac.com/how-to-install-docker-on-ubuntu-24-04-lts/
*     sudo apt update
*     sudo apt install apt-transport-https curl -y
*     curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo gpg --dearmor -o /etc/apt/keyrings/docker.gpg
*     echo "deb [arch=$(dpkg --print-architecture) signed-by=/etc/apt/keyrings/docker.gpg] https://download.docker.com/linux/ubuntu $(. /etc/os-release && echo "$VERSION_CODENAME") stable" | sudo tee /etc/apt/sources.list.d/docker.list > /dev/null
*     sudo apt update
*     sudo apt install docker-ce docker-ce-cli containerd.io docker-buildx-plugin docker-compose-plugin
*     sudo docker run hello-world
  Enabling Non-root Users to Run Docker Commands
*     sudo usermod -aG docker ${USER}
## 4. Install Cuda 
*     sudo apt-key del 7fa2af80
*     wget https://developer.download.nvidia.com/compute/cuda/repos/ubuntu2404/x86_64/cuda-keyring_1.1-1_all.deb
*     sudo dpkg -i cuda-keyring_1.1-1_all.deb
*     sudo apt update
*     sudo apt install cuda-toolkit nvidia-cuda-toolkit -y
  
## 5. Install Nvidia-toolkit
    see https://docs.nvidia.com/datacenter/cloud-native/container-toolkit/latest/install-guide.html
*     curl -fsSL https://nvidia.github.io/libnvidia-container/gpgkey | sudo gpg --dearmor -o /usr/share/keyrings/nvidia-container-toolkit-keyring.gpg \
  && curl -s -L https://nvidia.github.io/libnvidia-container/stable/deb/nvidia-container-toolkit.list | \
    sed 's#deb https://#deb [signed-by=/usr/share/keyrings/nvidia-container-toolkit-keyring.gpg] https://#g' | \
    sudo tee /etc/apt/sources.list.d/nvidia-container-toolkit.list
*     sudo apt-get update
*     sudo apt-get install -y nvidia-container-toolkit