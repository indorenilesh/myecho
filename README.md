# myecho
test flask program

#build image
docker image build -t myecho .

#run container
docker run -itd --name myecho --rm -p 5000:5000 myecho
