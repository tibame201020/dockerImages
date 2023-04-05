# for logging wsl use docker run redorid
```bash
sudo apt update
sudo apt-get update
sudo apt install -y gcc flex bison libelf-dev libssl-dev bc dwarves make git
sudo apt install -y android-tools-adb
sudo apt install -y curl rsync zip unzip binwalk
sudo apt-get install -y unzip
sudo apt-get install -y zip
sudo apt-get install -y sleuthkit
sudo apt-get install -y binwalk
sudo apt-get install -y p7zip-full
sudo apt update
sudo apt-get update
```

## create kernel
```bash
wget https://github.com/microsoft/WSL2-Linux-Kernel/archive/refs/tags/linux-msft-wsl-5.10.102.1.tar.gz
tar xf linux-msft-wsl-5.10.102.1.tar.gz
cd WSL2-Linux-Kernel-linux-msft-wsl-5.10.102.1
cp Microsoft/config-wsl .config

CONFIG_IPV6_ROUTER_PREF=y
CONFIG_IPV6_ROUTE_INFO=y
CONFIG_IPV6_MULTIPLE_TABLES=y
CONFIG_IPV6_SUBTREES=y

CONFIG_DMABUF_HEAPS=y
CONFIG_DMABUF_HEAPS_SYSTEM=y

CONFIG_STAGING=y
CONFIG_ASHMEM=y

CONFIG_ANDROID=y
CONFIG_ANDROID_BINDER_IPC=y
CONFIG_ANDROID_BINDERFS=y
CONFIG_ANDROID_BINDER_DEVICES="binder,hwbinder,vndbinder"

make -j`nproc`
```
