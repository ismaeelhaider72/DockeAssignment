#  Question
Run the following commands

<pre>
	docker run -it --name=test1 alpine:latest date
docker run -it --name=test1 alpine:latest date
</pre>
Why does this not work?



####  Answer:

Must be given a unique name to each container:

<pre>
	sudo docker run -it --name=test1 alpine:latest date
sudo docker run -it --name=test2 alpine:latest date
</pre>