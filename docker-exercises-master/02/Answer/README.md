#  Question
Environment variable exercise. This Dockerfile is incomplete and needs to be modified to produce the results below. Hint, you may need to add an environment variable.
####  Answer:
set the environment variable in Dockerfile<br/>
`ENV myhost testhost`<br/><br/>
Run these Commnad:<br/>
`docker build -t test .`<br/>
Run with setting environment variable in command line arguments<br/>
`docker run -e myhost=host1 test                         ` <br/>
output:<br/>
`host1                       `<br/>
Run without setting environment variable in command line arguments:<br/>
`docker run test                   `<br/>
output:<br/>
`testhost           `



