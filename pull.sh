#!/bin/bash

VENDOR=bbkedu
DEVICE=H7000

BASE=../../../vendor/$VENDOR/$DEVICE/proprietary
rm -rf $BASE/*

for FILE in `cat proprietary-files.txt | grep -v ^# | grep -v ^$ `; do
    DIR=`dirname $FILE`
    if [ ! -d $BASE/$DIR ]; then
        mkdir -p $BASE/$DIR
    fi
    #adb pull /system/$FILE $BASE/$FILE
    cp /home/john-romero/update/firmware-update/system_/system/$FILE $BASE/$FILE
done

./setup-makefiles.sh
