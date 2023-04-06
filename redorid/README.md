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

echo "CONFIG_IPV6_ROUTER_PREF=y" >> .config
echo "CONFIG_IPV6_ROUTE_INFO=y" >> .config
echo "CONFIG_IPV6_MULTIPLE_TABLES=y" >> .config
echo "CONFIG_IPV6_SUBTREES=y" >> .config
echo "CONFIG_DMABUF_HEAPS=y" >> .config
echo "CONFIG_DMABUF_HEAPS_SYSTEM=y" >> .config
echo "CONFIG_STAGING=y" >> .config
echo "CONFIG_ASHMEM=y" >> .config
echo "CONFIG_ANDROID=y" >> .config
echo "CONFIG_ANDROID_BINDER_IPC=y" >> .config
echo "CONFIG_ANDROID_BINDERFS=y" >> .config
echo "CONFIG_ANDROID_BINDER_DEVICES="binder,hwbinder,vndbinder"" >> .config

make -j`nproc`
```
