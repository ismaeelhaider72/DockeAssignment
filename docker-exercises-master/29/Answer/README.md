#  Question
How can you tell whether or not the ubuntu:16.4 image is signed for content trust?

### Answer:
run this commnad 
`export DOCKER_CONTENT_TRUST=1`

after this now pull the images if the image successfully pulled then this image is signed for content trust otherwise it's not