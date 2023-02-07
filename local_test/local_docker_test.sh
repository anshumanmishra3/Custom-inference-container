#!bin/bash

#Build
echo "Build the docker image"
sudo docker build -t inference-container .

#Run
echo "Run the docker image"
# sudo docker run -v $(pwd)/test_dir:/opt/ml -p 8080:8080 --rm ${image} inference-container:latest
image=$1

sudo docker run -it -d --volume $(pwd)/test_dir:/opt/ml -p 8080:8080 inference-container
# sudo docker run --name inference-container -v "$(pwd)"/test_dir:/opt/ml -p 8080:8080 inference-container:latest

# sudo docker run -d -p 8080:8080 inference-container

#test
echo "Running the test script now"
payload=$1
content=${2:-text/csv}

curl --data-binary @${payload} -H "Content-Type: ${content}" -v http://localhost:8080/invocations

# curl --data-binary @payload.csv -H 'Content-Type: text/csv' http://localhost:8080/invocations