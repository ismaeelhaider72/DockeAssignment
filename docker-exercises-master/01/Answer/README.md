#  Question

This is an exercise where you are going to use an existing NodeJS script that connects to a Mongo database. <br/>The Node script presents a ReST interface on port 3000<br/>

#  Answer

Make a docker-compose.yml file and compose up the database and webnode image first in detach mode and <br/>then run compose up the test image in foreground<br/>
Run these Commnads:<br/>
`./test-compose.sh` <br/>
 Above command will  run instruction as following:
 <pre>

 	docker run -t --rm -w /work -v $(pwd):/work node:6.9.1 npm install

 	docker-compose -f docker-compose.yml up -d db web

 	docker-compose -f docker-compose.yml up test

 	docker-compose -f docker-compose.yml down
 </pre>

So curl is able to access the node script it will output Hello World.