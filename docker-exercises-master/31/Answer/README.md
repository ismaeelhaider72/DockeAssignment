# Question
We need to allow only a single instance of a container to run on a host. This needs to be enforced no matter what arguments are used to run it (so don't try to skate by with using a named container).

What ways can you think of to do this?

#### Answer:

To run ONOS as a single instance:

<pre>
	docker run -t -d -p 8181:8181  --name onos onosproject/onos
</pre>	

an other exampe:

<pre>
	docker run -e ARANGO_NO_AUTH=1 -p 192.168.1.1:10000:8529 -name arangod arangodb/arangodb --server.endpoint tcp://0.0.0.0:8529\
</pre>

This will start a single server within a Docker container with an isolated network. Within the Docker container it will bind to all interfaces (this will be 127.0.0.1:8529 and some internal Docker IP on port 8529). By supplying -p 192.168.1.1:10000:8529 we are establishing a port forwarding from our local IP (192.168.1.1 port 10000 in this example) to port 8529 inside the container.