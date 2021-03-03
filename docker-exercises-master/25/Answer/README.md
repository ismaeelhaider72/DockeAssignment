#  Question
Try the following. Why does the first one fail and the second one work?
<pre>
	$ docker create -v /tmp --name data alpine
Unable to find image 'alpine:latest' locally
latest: Pulling from library/alpine
627beaf3eaaf: Pull complete
Digest: sha256:58e1a1bb75db1b5a24a462dd5e2915277ea06438c3f105138f97eb53149673c4
Status: Downloaded newer image for alpine:latest
Error response from daemon: No command specified

$ docker create -v /tmp --name data ubuntu:14.04
dca082c815b01c4cf4c7304a34374c222b6fd2cfd4309e02ee908287562b2711
</pre>	

### Answer:
Making docker file contain only this give us approximately 0kb size when we build it.
<pre>
FROM scratch

VOLUME /data
ENTRYPOINT ["/no/such/file"]
	</pre>


and Now in another exampe test the container, use the following commands:
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