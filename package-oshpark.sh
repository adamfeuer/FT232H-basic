#!/bin/bash

DATE=`date +'%Y-%m-%d-%H%M'`
BOARD="FT232H-basic"
DIR="$BOARD-oshpark-files"
mkdir -p $DIR 
cp $BOARD.toplayer.ger $DIR/$BOARD.GTL
cp $BOARD.bottomlayer.ger $DIR/$BOARD.GBL
cp $BOARD.topsoldermask.ger $DIR/$BOARD.GTS
cp $BOARD.bottomsoldermask.ger $DIR/$BOARD.GBS
cp $BOARD.topsilkscreen.ger $DIR/$BOARD.GTO
cp $BOARD.bottomsilkscreen.ger $DIR/$BOARD.GBO
cp $BOARD.boardoutline.ger $DIR/$BOARD.GKO
cp $BOARD.drills.xln $DIR/$BOARD.XLN
zip -r $DIR-$DATE.zip $DIR

