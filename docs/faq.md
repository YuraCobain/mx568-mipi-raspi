# Setting controls

```bash
v4l2-ctl -c <control>=<value> -d <subdevice>
#Example for first camera
v4l2-ctl -c black_level=1000 -d /dev/v4l-subdev2
```

# Change lanes settings by bash command

```bash
sudo sed -i "s/^dtoverlay=vc-mipi-bcm2712-<0|1>,lanes[0-9]*/dtoverlay=vc-mipi-bcm2712-<0|1>,lanes<1|2|4>/" "/boot/firmware/config_vc-mipi-driver-bcm2712.txt"
#Example for first camera and 2 lanes
sudo sed -i "s/^dtoverlay=vc-mipi-bcm2712-0,lanes[0-9]*/dtoverlay=vc-mipi-bcm2712-0,lanes2/" "/boot/firmware/config_vc-mipi-driver-bcm2712.txt"
```
# Connection issues

```bash
sudo dmesg | grep vc_mipi_camera
```
## Indication that sensor is not well connected

<b><span style="color:green">[    x.xxxxx]</span> <span style="color:yellow">vc_mipi_camera 4-001a: </span><span style="color:red">
vc_mod_setup(): Unable to get module I2C client for address 0x10</span></b>

## Indication that lanes are not configure properly

<b><span style="color:green">[    x.xxxxx]</span><span style="color:yellow"> vc_mipi_camera 4-001a: </span><span style="color:#d6281c">
 vc_core_set_num_lanes(): Number of lanes 1 not supported!</span><b>