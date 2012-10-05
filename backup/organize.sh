#!/bin/bash

YEAR=`date +%Y`
MONTH=`date +%m`
DAY=`date +%d`

YESTERDAY_YEAR=`date +%Y -d 'yesterday'`
YESTERDAY_MONTH=`date +%m -d 'yesterday'`
YESTERDAY_DAY=`date +%d -d 'yesterday'`

DIR="backups/${YEAR}/${MONTH}/${DAY}"
YESTERDAY_DIR="backups/${YESTERDAY_YEAR}/${YESTERDAY_MONTH}/${YESTERDAY_DAY}"

if [ -d "$YESTERDAY_DIR" ];
then
    tar -C $YESTERDAY_DIR -cvzf $YESTERDAY_DIR.tar.gz .
    rm -rf $YESTERDAY_DIR
fi

mkdir -p $DIR

mv pending/* $DIR/
