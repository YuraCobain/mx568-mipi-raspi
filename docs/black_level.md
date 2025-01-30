# Black level
Adds an offset to the image output by setting
```shell
v4l2-ctl -c black_level=value
```
where the value goes from 0 to 100000. This value is interpreted as milli% or m%.

A blacklevel value of 0 means 0%, there will be no offset added to the pixel output.
And a value of 100000 would add the maximum possible offset to the pixel data.
Every value between 0 and 100000 [m%] will be interpreted as a relative value in respect
to the maximal possible value of the sensors black level register. 
E.g. black_level=5859 (5.859%) will be correlating with an offset of 15 out of 256 possible
values for the 8-Bit mode. The same relation would apply to 60/1024 or 240/4096 for the 
10-Bit or the 12-Bit mode, respectively. The advantage of this relative property is that 
there is no need to set up a new absolute value when switching between different Bit-modes.


