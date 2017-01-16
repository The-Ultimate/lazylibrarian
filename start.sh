#!/bin/sh
PYTHON=/usr/bin/python
LAZY=/lazylibrarian
DATA=/Config/lazylibrarian

if [ ! -d $DATA ];
then
	mkdir $DATA
	mv $LAZY/config.ini $DATA
fi

$PYTHON $LAZY/LazyLibrarian.py --datadir $DATA --config $DATA/config.ini
