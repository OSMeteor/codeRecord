shell sh 

测试io
dd if=/dev/xvda1 of=test bs=64k count=4k oflag=dsync

CentOS7
yum install docker
service docker start
chkconfig docker on 
 
阿里云 docker 加速器

http://console.d.aliyun.com/index2.html/?spm=0.0.0.0.1VIZES#/docker/booster

 

https://github.com/MSOpenTech/redis/releases
http://www.loadtestingtool.com/

https://ffmpeg.org/ffmpeg-filters.html#colorkey
ffmpeg -i <base-video> -i <overlay-video> --filter_complex '[1:v]colorkey=0x<color>:<similarity>:<blend>[ckout];[0:v][ckout]overlay[out]' -map '[out]' <output-file>

active contour
visboundaries

http://cn.mathworks.com/help/images/ref/activecontour.html


cvSnakeImage

https://developer.nvidia.com/ffmpeg
ChanVeseBinarize http://reference.wolfram.com/language/ref/ChanVeseBinarize.html
