#!/bin/bash

usage()
{
  echo "Usage: $0 -E <DEV|QA|DR|PROD>"
  exit 1
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

if [[ "$APPENV" == "DEV" || "$APPENV" == "QA" || "$APPENV" == "DR" || "$APPENV" == "PROD" ]]
then
  cp ${APPENV}_application.properties application.properties	
else	
  usage
fi
