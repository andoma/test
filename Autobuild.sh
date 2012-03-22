#!/bin/bash

BUILD_API_VERSION=2
EXTRA_BUILD_NAME=""

while getopts "vht:e:p:" OPTION
do
  case $OPTION in
      v)
	  echo $BUILD_API_VERSION
	  exit 0
	  ;;
      h)
	  echo "This script is intended to be used by the autobuild system only"
	  exit 0
	  ;;
      t)
	  TARGET="$OPTARG"
	  ;;
      e)
	  EXTRA_BUILD_NAME="$OPTARG"
	  ;;
  esac
done


#
# $1 = local file path
# $2 = file type
# $3 = content-type
# $4 = filename
#
artifact() {
    echo "doozer-artifact:$PWD/$1:$2:$3:$4"
}


if [[ -z $TARGET ]]; then
    echo "target (-t) not specified"
    exit 1
fi

artifact test.png png image/png test.png
artifact test.png png image/png test2.png
artifact test.png png image/png test3.png
