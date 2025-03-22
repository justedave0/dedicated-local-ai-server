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
*     sudo apt install apt-transport-https curl
*     curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo gpg --dearmor -o /etc/apt/keyrings/docker.gpg
*     echo "deb [arch=$(dpkg --print-architecture) signed-by=/etc/apt/keyrings/docker.gpg] https://download.docker.com/linux/ubuntu $(. /etc/os-release && echo "$VERSION_CODENAME") stable" | sudo tee /etc/apt/sources.list.d/docker.list > /dev/null
*     sudo apt update
*     sudo apt install docker-ce docker-ce-cli containerd.io docker-buildx-plugin docker-compose-plugin
*     sudo docker run hello-world
  Enabling Non-root Users to Run Docker Commands
*     sudo usermod -aG docker ${USER}
## 4.  
