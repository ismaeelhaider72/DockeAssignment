#  Question
in the docker-compose file add a delay before a service starts

####  Answer:
Yes, by Adding dokku/wait as a service, then run wait -c service:port <br/>


<pre>
docker-compose.yml file

version: '3'

services:

    postgres:
        image: postgres:12
        environment:
            POSTGRES_PASSWORD: s3cr3t

    wait:
        image: dokku/wait


</pre>

##### run  these commnads: ######

<pre>

sudo docker-compose up -d
sudo docker-compose run wait -c postgres:5432              // exposed port  (e.g. postgres:5432)
sudo docker-compose exec postgres psql -U postgres -c "SELECT NOW()"
</pre>