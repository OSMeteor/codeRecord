####C++ lib
* [opencv](http://www.opencv.org/) 
* [cmake](http://www.cmake.org/)
* [exiv2](http://www.exiv2.org/)
* [json](http://www.json.org/)
* [rapidjson(推荐)](https://github.com/miloyip/rapidjson)
* [jsoncpp](http://sourceforge.net/projects/jsoncpp/)
* [freeimage](http://freeimage.sourceforge.net/)
* ffmpeg -i test.mp4  -c:v libx264  -preset superfast -x264opts keyint=20 -acodec copy -f  mp4
* ffmpeg -i /Volumes/website/videos/advert/advert.mp4 -c:v libx264  -preset superfast -x264opts keyint=5 -acodec copy -f  mp4 /Volumes/website/videos/advert/advert.mp4
openssl rand -base64 8
imaging
https://moonbingbing.gitbooks.io/openresty-best-practices/content/openresty/install_on_centos.html
http://www.codeproject.com/Articles/781213/Fundamentals-of-Image-Processing-behind-the-scenes
http://www.codeproject.com/Articles/9727/Image-Processing-Lab-in-C
http://www.codeproject.com/Articles/789555/An-Image-Processing-Application-in-Cplusplus
http://www.codeproject.com/Articles/38176/Image-Processing-Skin-Detection-Some-Filters-and-E
http://www.codeproject.com/Articles/3803/Cexif
http://www.codeproject.com/Articles/1989/Image-Processing-for-Dummies-with-C-and-GDI-Part
http://www.codeproject.com/Articles/278222/Image-Processing-in-Metro
http://www.codeproject.com/Articles/237226/Image-Processing-is-done-using-WPF
http://www.codeproject.com/Articles/42729/Image-Filters  颜色调整
http://www.codeproject.com/Articles/206036/Image-Filters-Using-CPU-GPU-and-Cplusplus-AMP
http://www.codeproject.com/Articles/455506/Integration-Kinematics-plus-Digital-Image-Processi
http://www.codeproject.com/Articles/502829/GPGPU-image-processing-basics-using-OpenCL-NET
http://www.codeproject.com/Articles/42192/Fast-Image-Blurring-with-CUDA
http://www.codeproject.com/Articles/200908/Introducing-DirectX-to-WPF
http://trac.ffmpeg.org/wiki/Create%20a%20video%20slideshow%20from%20images

ffmpeg -framerate 1/5 -start_number 126 -i SvenLick_Magiv%03d.png -c:v libx264 -r 80  -i audio.wav -c:v libx264 -c:a aac -strict experimental -b:a 192k -shortest out.mp4

ffmpeg -loop 1 -i img.jpg -i audio.m4a -c:v libx264 -c:a copy -shortest out.mp4


ffmpeg -framerate 1/5 -start_number 097 -i SvenLick_Magiv%03d.png -r 80  -c:v libx264 -pix_fmt yuv420p -i /Users/meteor/Desktop/gm/ffmpeg/Sven\ Lick/Copyright\ and\ Audio/Sven\ Lick\ MIX\ 25Jul2014.wav   -c:a aac -strict experimental -b:a 192k -shortest out.mp4

ffmpeg -loop 1 -start_number 097 -i SvenLick_Magiv%03d.png -i /Users/meteor/Desktop/gm/ffmpeg/Sven\ Lick/Copyright\ and\ Audio/Sven\ Lick\ MIX\ 25Jul2014.wav -c:v libx264 -c:a copy -shortest out.mp4
Workstation
TeamViewer Accept Incoming LAN connection
Firewall turn off
open remote desktop
set FTP
Map Z:\ to NAS
open SNNP
sync windows time to master
db+app
TeamViewer Accept Incoming LAN connection
Firewall turn off
open remote desktop
Map Z:\ to NAS
open SNNP
sync windows time to master
NAS
show hkdl Map to db+app Workstation
sync windows time to master

SHM

"width": 3200,
      "height": 2732,
      "x": 0,
      "y": 450,
"width": 3000,
      "height": 3793,
      "x": 700,
      "y": -200,

gm composite -tile watermark.png ORIG_MAX_400.jpg WM_MAX_400.jpg

http://comments.gmane.org/gmane.comp.video.graphicsmagick.tools/82


http://blog.csdn.net/eightdegree/article/details/7425811

https://developer.nvidia.com/gpugems/GPUGems3/gpugems3_pref01.html
https://developer.nvidia.com/gpu-accelerated-libraries
http://www.cuvilib.com/#demo
http://wiki.cuvilib.com/index.php?title=Streams_and_Multi-GPU_using_CUVI
http://www.codeproject.com/Articles/684783/Image-processing-as-fast-as-possible-in-Csharp
http://www.directxtutorial.com/LessonList.aspx?listid=111






GM()
gm convert -size 120x120 cockatoo.jpg -resize 120x120 +profile "*” thumbnail.jpg
gm identify cockatoo.jpg


gm convert /Users/meteor/Desktop/gm/image.jpg -thumbnail 512x512 -write /Users/meteor/Desktop/gm/512/images.jpg -thumbnail 128x128 /Users/meteor/Desktop/gm/512/images.jpg

gm convert icon.png -adjoin thumbnail1.jpg


Mac
查看处理器数量以及信息
system_profiler | grep processor
在mac os x的终端中以命令行的形式查看本机cpu信息：

sysctl -n machdep.cpu.brand_string

mac address 会变化的 。绑定硬件的话，客户端 可以用  加密狗   或者   让用户运行我们的一个程序，和阿里的支付宝插件一样（这个需要我们研发）。

unreal engine和cryengine

AppZapper是一款方便易用的mac软件卸载工具

为方便大家注册，特分享下AppZapper 注册码
Name: FreeZaPS
SN: APZP-112-102-226-115

finder

显示隐藏文件

defaults write com.apple.finder AppleShowAllFiles TRUE 
显示文件夹路径
defaults write com.apple.finder _FXShowPosixPathInTitle -bool YES
