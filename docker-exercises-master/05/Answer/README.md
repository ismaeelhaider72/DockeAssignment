#  Question
What size image does this Dockerfile create? What size of archive does it create if you export it to a tarball? What else is in the image that was built?

####  Answer:
<pre>
sudo docker build -t testimage .
sudo docker images --format "{{.Size}}" testimage
2
sudo docker save -o test.tar testimage

ls -lh test.tar|awk '{print $5}'
11k
</pre>