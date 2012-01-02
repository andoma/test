#!/bin/bash

BUILD_API_VERSION=2
EXTRA_BUILD_NAME=""

while getopts "vht:e:" OPTION
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


if [[ -z $TARGET ]]; then
    echo "target (-t) not specified"
    exit 1
fi

