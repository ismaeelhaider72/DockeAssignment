#  Question
Example of printing the argument array using NodeJS.

When you run this you should get an error.

What is wrong and how do you fix it?
#### Answer:
server.js source code is not found and must passed into container<br/>

###### Run these command:
`docker run -it --rm -v $(pwd):/root --workdir=/root node:6.9.1 node server.js abc`<br/>
output:<br/>

<pre>
0: /usr/local/bin/node 
1: /root/server.js 
2: abc
	</pre>
