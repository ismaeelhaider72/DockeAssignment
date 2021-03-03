# Question

Run a Fluent container and then run various other containers sending their log output to the Fluent container.

#### Answer:

make a docker-compose file in which we make a flentd container and alpine running having running so query on it app.sh

<pre>

version: "3"
services:
  fluentd:
    container_name: fluentd
    user: root
    build:
      context: .
    image: fluentd
    volumes:
    - /var/lib/docker/containers:/fluentd/log/containers # Example: Reading docker logs
    - ./file:/fluentd/log/files/ #Example: Reading logs from a file
    - ./configurations:/fluentd/etc/
    - ./logs:/output/ # Example: Fluentd will collect logs and store it here for demo
    logging:
      driver: "local"

 file-myapp:
    container_name: file-myapp
    image: alpine
    volumes:
    - ./file:/app
    command: [ /bin/sh , -c , "chmod +x /app/app.sh && ./app/app.sh"]
</pre>

Now make a fluent.conf file 
<pre>
	
<#source>
  @type tail
  format json
  read_from_head true
  tag file-myapp.log
  path /fluentd/log/example-log.log
  pos_file /tmp/exampe-logs.log.pos
<#/source>

 <#match file-myapp.log>
   @type file
   path /output/file-myapp.log
 <#/match>

</pre>
