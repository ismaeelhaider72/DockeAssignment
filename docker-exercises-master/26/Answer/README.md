#  Question
It looks like something happened about 15 minutes ago. How can you determine what containers ran in the last 20 minutes?

### Answer:
<pre>
	docker events --filter 'container=mycontainer' --format '{{json .}}' --since '20m'
</pre>