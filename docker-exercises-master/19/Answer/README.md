#  Question
  Run a container that outputs the current date and time in Brussels

### Answer:

Make a Dockile and build and run it
<pre>
sudo docker build -t testbrusseltz . 
sudo docker run testbrusseltz            //  output -> Wed Feb 24 14:34:00 CET 2021

</pre>