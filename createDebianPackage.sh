sudo rm -rf build

mkdir -p build


cp -r debian_package build/debian
cp -r vc-mipi-driver-bcm2712 build/debian
mkdir -p build/debian/tmp
cp -r src build/
cp dkms.conf build/

cd build
sudo dpkg-buildpackage -us -uc -b 