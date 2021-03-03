#  Question
Can a local docker-composer service container connect to a container running in another cluster?
### Answer:
yes, we can connect a docker-composer service container connect to a container running in another cluster if we connect both of them to the same network <br/>
##### Using these Commands:
`docker network connect NETWORKNAME CONTAINERNAME`