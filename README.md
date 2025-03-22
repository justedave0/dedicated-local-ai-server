# dedicated-local-ai-server

## 1. Install Ubuntu with ssh server
- Install ssh server
- Don't install docker with snap

## 2. Expand the partition on the disk
### https://askubuntu.com/a/1330709
sudo vgdisplay
sudo lvextend -l +100%FREE /dev/mapper/ubuntu--vg-ubuntu--lv
sudo resize2fs /dev/mapper/ubuntu--vg-ubuntu--lv
