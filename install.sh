sudo apt update && sudo apt upgrade
sudo apt install git build-essential cmake libuv1-dev libssl-dev libhwloc-dev
git clone https://github.com/xmrig/xmrig.git
cd xmrig
mkdir build
cd build
cmake ..
make
sudo sysctl -w vm.nr_hugepages=$(nproc)