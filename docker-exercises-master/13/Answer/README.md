#  Question
Write a couple of shell scripts that will ping pong back and forth with each other and run them as containers.

#### Answer
<pre>
docker pull mysql/mysql-server:5.6
docker run -p 3306:3306 --name mysql -e MYSQL_ROOT_PASSWORD=rootpassword123 -d mysql/mysql-server:5.6
docker pull nimmis/apache-php5
docker run -tid -p 8084:80 --name apache2 --link mysql nimmis/apache-php5


docker exec -ti apache2 bash
ping mysql

docker exec -ti mysql bash
ping apache2

</pre>
