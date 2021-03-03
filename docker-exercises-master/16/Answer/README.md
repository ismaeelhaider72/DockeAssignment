#  Question
Docker images can be interesting to look around in. You can save images to a tar archive and then extract the layers and metadata files from them.

tar commands look like the following:

<pre>
list tar archive contents - tar tvf archive
extract tar archive contents - tar xvf archive	
	</pre>

####  Answer:
<pre>

#####docker pull alpine
#####docker save alpine > alpine.tar
make a new directoty
#####tar xvf ../alpine.tar

#####:ls -la 0030c97fbf24be347ea1c39fab560308623eedd6f46bd6ee17b85c271c7e3732/
drwxr-xr-x  3 root root    4096 مارچ   1 17:50 .
drwxr-xr-x  3 root root    4096 مارچ   1 17:49 ..
drwxr-xr-x 19 root root    4096 مارچ   1 17:51 ext
-rw-r--r--  1 root root    1144 فروری 18 02:19 json
-rw-r--r--  1 root root 5879808 فروری 18 02:19 layer.tar
-rw-r--r--  1 root root       3 فروری 18 02:19 VERSION


make a new directory:
#####tar xvf ../layer.tar

bin  dev  etc  home  lib  media  mnt  opt  proc  root  run  sbin  srv  sys  tmp  usr  var

</pre>
