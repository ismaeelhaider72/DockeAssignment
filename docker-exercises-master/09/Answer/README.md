# Question

Run a Fluent container and then run various other containers sending their log output to the Fluent container.

#### Answer:

make a docker-compose file in which we make a flentd container and alpine running having running so query on it app.sh

##### Run Instruction:

`docker-compose up -d file-myapp`
<br/>
this command will create the log to `file/example.-log.log` directory<br/>
then 
<br/>
`docker-compose up -d fluentd`
<br/>
This command with read the log file  from path `/fluentd/log/files/example-log.log`
<br/>
and
<br/>
write the log to path `/output/file-myapp.log`




