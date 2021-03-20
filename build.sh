#!/bin/bash

usage()
{
  echo "Usage: $0 -E <DEV|QA|DR|PROD>"
  exit 1
}

createVE()
{
  yum install python3 pip3
  pip3 install virtualenv
  virtualenv myecho_env
  source myecho_env/bin/activate
  pip3 install -r requirement.txt
}

while getopts "E:" opt
do
  case $opt in
    E) APPENV=$OPTARG
       ;;
    \?) echo "Provide environment as a parameter. i.e. -E DEV"
        ;;
  esac
done

if [ $# -lt 1 ]
then
  usage
fi  

if [[ "$APPENV" == "DEV" && "$APPENV" == "QA" && "$APPENV" == "DR" && "$APPENV" == "PROD" ]]
then
  usage
fi

#Create virtual environment
createVE

#Create application.properties
cp config/${APPENV}_application.properties application.properties
