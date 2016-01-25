
import os,subprocess,hashlib,datetime
import logging



if(os.name=='nt'):
	print "windows" 
elif(os.name=='posix'):
 	subprocess.call(["git","clone","http://192.168.8.4/meteor/BUZZimaging.git"])
	print "Linux/Unix"
	print os.getcwd()
	print os.listdir(os.getcwd())

else:
	print "other system" 
print os.path.isdir(os.getcwd())
print os.path.isfile(os.path.join(os.getcwd(),'/aa.txt'))
print datetime.datetime.now()

cmd = "mkdir ./aa" 

KEY_VALUE = '/BeginMan/'
now = datetime.datetime.now()
m = hashlib.md5()
str = '%s%s' %(KEY_VALUE,now.strftime("%Y%m%d"))
m.update(str)
value = m.hexdigest()
print value #8db42d3e90b41105ed061b8347a7c850
FILE = os.getcwd()
# logging.basicConfig(filename=os.path.join(FILE,'log.log'),level=logging.DEBUG)
logging.basicConfig(level=logging.DEBUG,
                    format='%(asctime)s:%(filename)s[line:%(lineno)d] %(levelname)s %(message)s',
                    datefmt='%a, %d %b %Y %H:%M:%S',
                    filename = os.path.join(FILE,'log.txt'),
                    filemode='w')
logging.debug('444')
logging.info('4444')
logging.warning('4444')

print os.getlogin() 
print os.getenv()

# subprocess.call("rm -R ./aa",shell=True)
# subprocess.call("rm -R ./aa1",shell=True)
# subprocess.call("mkdir ./aa1",shell=True)
# fr=open("test.py","r")    
# print fr.readlines() 
# os.makedirs(r'./aa/')
# os.remove()
# os.path.exists
# os.path.abspath(name)
# os.path.normpath(path)
# os.path.getsize(name)
# os.path.splitext()
# os.path.join(path,name)
# os.path.basename
# os.path.dirname
# print os.name
# subprocess.call("rm -R ./aa",shell=True)
# subprocess.call("rm -R ./aa1",shell=True)
# subprocess.call("mkdir ./aa1",shell=True)
# fr=open("test.py","r")    
# print fr.readlines() 
# os.makedirs(r'./aa/')
# os.remove()
# os.path.exists
# os.path.abspath(name)
# os.path.normpath(path)
# os.path.getsize(name)
# os.path.splitext()
# os.path.join(path,name)
# os.path.basename
# os.path.dirname
# print os.name
import os,subprocess,hashlib,datetime
import logging
import ftplib  
######ftp down 
ftp = ftplib.FTP()
FTPIP= "192.168.8.5"
FTPPORT= 21
USERNAME= "tools"
USERPWD= "tools"
ftp.connect(FTPIP, FTPPORT)  
ftp.login(USERNAME,USERPWD)  
CURRTPATH= "/meteor"
ftp.cwd(CURRTPATH)  
DownLocalFilename="PWTC_480x480.mp4"
f = open(DownLocalFilename, 'wb')  
ftp.retrbinary('RETR ' +DownLocalFilename , f.write , 1024)  
f.close()  
ftp.close()
###########ftp upload#######
pclocalfile=os.path.join(os.getcwd(),'PWTC_480x480_1.mp4')
print pclocalfile
ftpremotepath="~/meteor"
f = ftplib.FTP()
f.connect(FTPIP, FTPPORT)  
f.login(USERNAME,USERPWD)  
f.cwd(ftpremotepath)
fd=open(pclocalfile,'rb')
print os.path.basename(pclocalfile)
f.storbinary('STOR ' + os.path.basename(pclocalfile),fd)
fd.close()
f.quit


if(os.name=='nt'):
	print "windows" 
	subprocess.call(["git","clone","http://192.168.8.4/meteor/BUZZimaging.git"])
elif(os.name=='posix'):
 	
	print "Linux/Unix"
	 

else:
	print "other system"  




