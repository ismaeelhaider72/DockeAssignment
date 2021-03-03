#  Question
What happens when you try this and what is wrong with it?
##  Answer:
Remove the Extra columns <br/>

`ENTRYPOINT  echo ${ITEM;}`  ====> `ENTRYPOINT  echo ${ITEM}`<br/>

####Run these commands:
`docker build -t testenv1 .`<br/>

`docker run --rm -e ITEM=5 testenv1`




