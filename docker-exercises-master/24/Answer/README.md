#  Question
What is the smallest data only container you can make?
### Answer:

<pre>
	FROM scratch
MAINTAINER Mattias Holmlund <mattias@holmlund.se>

VOLUME /data
ENTRYPOINT ["/no/such/file"]
</pre>	

In other example put smallest data as mush as possible in data only container

<pre>
	$ docker create --name my-data mattiash/data
76c0452a09f201da31a0bc56d71c367faf1dd14ed1a0809a85442383d6cf5152
$ docker run --volumes-from my-data -i -t --rm ubuntu /bin/bash
root@78694d60717d:/# echo hello > /data/test.txt
root@78694d60717d:/# exit
exit
$ docker run --volumes-from my-data -i -t --rm ubuntu /bin/bash
root@6ca4b9e9edea:/# cat /data/test.txt 
hello
root@6ca4b9e9edea:/# exit
exit

</pre>