sudo rm -rf build

mkdir -p build

# Set version if not set
if [ -z "$VERSION" ]; then
    export VERSION="0.0.0"
fi
# Delete v from version
export VERSION=$(echo $VERSION | sed 's/v//')


cp -r debian_package build/debian
cp -r vc-mipi-driver-bcm2712 build/debian
mkdir -p build/debian/tmp
cp -r src build/
envsubst < debian_package/changelog > build/debian/changelog
envsubst < dkms.conf > build/dkms.conf
envsubst < debian_package/control > build/debian/control
envsubst < debian_package/not-installed > build/debian/not-installed
envsubst < debian_package/postinst > build/debian/postinst
envsubst < debian_package/postrm > build/debian/postrm
envsubst < debian_package/rules > build/debian/rules
envsubst < debian_package/vc-mipi-driver-bcm2712.install > build/debian/vc-mipi-driver-bcm2712.install 

cd build
sudo dpkg-buildpackage -us -uc -b 