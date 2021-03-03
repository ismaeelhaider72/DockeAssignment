#  Question
Use inspect to get metadata for a resource.

####  Answer:

give the --type argument specific container , image or network

<pre>
docker inspect --type=container testthing
docker inspect --type=container --type=image --type=network testthing
</pre>

