#  Question
How can you quickly and succinctly determine the image id and created date for an Alpine image?

####  Answer:
<pre>
docker inspect alpine:latest --format='{{.Id}} {{ .Created}}'
</pre>