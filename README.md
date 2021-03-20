# myecho
test flask program

##### Run app in DOCKER #####
#build image

docker image build -t myecho .

#run container

docker run -itd --name myecho --rm -p 5000:5000 myecho

##### Run app in standalone server #####

./build.sh -E DEV

nohup start.sh > start.out &
