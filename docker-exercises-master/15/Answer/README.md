#  Question
Description
Run the following containers and note some containers failed and exited with an error status. Use the docker inspect command to show the exit status of only the failed containers.

Did you know that you can include conditionals in format statements?

Run instructions
<pre>
docker run ubuntu date
docker run ubuntu date1
docker run ubuntu date2
docker run ubuntu date
</pre>	



####  Answer:

`sudo docker inspect $(docker ps -aq) --format='{{ .State.ExitCode }} {{.Name}}' |awk '$1 !~ /^[0]/'`

output:

<pre>
127 /blissful_thompson 
127 /boring_colden 127
127 /condescending_mcclintock 127
</pre>	