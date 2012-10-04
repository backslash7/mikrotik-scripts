#!/bin/bash

YEAR=`date +%Y`
MONTH=`date +%m`
DAY=`date +%d`
DIR="backups/${YEAR}/${MONTH}/${DAY}"

mkdir -p $DIR

mv pending/* $DIR/

