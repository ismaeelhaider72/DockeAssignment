#  Question

Did you know that you can include docker containers in pipelines?

Using a pipeline, echo the string "change this word to" from a docker container into sed in another container and replace "this" with "that".

The echo command looks like this:
<pre>
	echo "change this word to"
</pre>
The sed command looks like this:

<pre>
	sed -n 's/this/that/p
</pre>

### Answer:

`docker run -i --rm alpine echo "change this word to" | docker run -i alpine sed -n 's/this/that/p'`
######output:
`change that word to`