#!/bin/bash
# Test Url Script
# By: AJ Wilson
# Accepts lists of urls in separate file and tests if each site is up or not

file=$1
status=0
#COLORS
NC='\033[0m' # No Color
RED='\033[0;31m'
GREEN='\033[0;32m'

if [ $# != 1 ]; then
  echo -e "${RED}Error:${NC}Incorrect number of parameters!" >&2
  exit 1
else
  while read line; do
  ping -c 1 $line &> /dev/null && err=0 || err=1
  if [ $err == 1 ]; then echo -e "${RED}URL not found:${NC}" $line; status=$err; fi
  done < $1

  if [ $status == 0 ]; then echo -e "${GREEN}All URLs Online!"; fi
  exit $status
fi
