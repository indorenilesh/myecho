# myecho
test flask program

##### Run app in dockerized enviroment #####

./build.sh -E DEV

docker run -itd --name myecho --rm -p 5000:5000 myecho
