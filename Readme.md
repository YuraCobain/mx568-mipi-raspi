# Installation
The driver is tested on booksworm with 64 bit
Run installation with the installation of the needed packages 
```
sudo apt install ./vc-mipi-driver-bcm2712_0.3.1_arm64.deb
```
<b>or</b>
Run the installation with manual packages
```
sudo apt install dkms, linux-headers-generic, v4l-utils, whiptail
sudo dpkg -i ./vc-mipi-driver-bcm2712_0.3.1_arm64.deb
```
After a reboot the connected sensor(s) should be detected and visible as v4l2 capture devices
Under the current raspberry pi OS with booksworm, 
the sensors are:

| Camera   | Device      | Subdevice        |
| -------- | ----------- | ---------------- |
| Cam0     | /dev/video0 | /dev/v4l-subdev2 |
| Cam1     | /dev/video8 | /dev/v4l-subdev5 |


# Building debian package

Running dpkg-buildpackage by script creates debian package

```
bash createDebianPackage.sh
```

# Configuration on Raspberry Pi 5

1. The configuration for the VC Mipi Sensors is in the boot file 
<i>/boot/firmware/config_vc-mipi-driver-bcm2712.txt</i>. 
The right lanes configuration for the sensors has to be made. For some sensors, 2 modes are available. 
If no specific configuration is needed, the "more lanes" configuration is the first choice (i.e. 4 instead 2 lanes)
2. Additionaly the configuration tool vc-config is installed. By calling ```vc-config```
Here, there are also the possibilities to change the values of the controls and also the Region of Interests (ROI)

![Cam Controls](./docs/whiptail_controls.png "Cam Controls")
![Cam Selection](./docs/whiptail_cam_selection.png "Cam Selection")
![Lanes configuration](./docs/whiptail_lanes_config.png "Lanes configuration")

