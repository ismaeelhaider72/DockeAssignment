#  Question
If you have a already running container that you need to pass a file to how can you send that file to it?

####  Answer:
create and run the container by giving these commnad :<br/>
<pre>

sudo docker run -it --rm --name=mycontainer  alpine:latest

run this in new terminal

sudo docker cp foo.txt mycontainer:/foo.txt
</pre>