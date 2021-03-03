#  Question

Docker containers can be interesting to look around in. You can save containers to a tar archive and then extract the layers and metadata files from them. Note that exported containers look a little different from images that have been saved to an archive.

#### Answer:

<pre>

docker run -it --name=atest -e tmpvar=test alpine sh

echo $tmpvar

docker export -o alpine.tar test


tar xvf ../alpine.tar   // output -> bin  dev  etc  home  lib  media  mnt  opt  proc  root  run  sbin  srv  sys  tmp  usr  var


during extracting that tar file we don't see the metadata files that was seen in image tar file

</pre>


