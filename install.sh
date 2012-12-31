#!/bin/sh

SCRIPT=`readlink -f $0`
SCRIPTPATH=`dirname $SCRIPT`

CONFIGPATH=$HOME/.config

ln -sf $SCRIPTPATH/compton.conf $CONFIGPATH
ln -sf $SCRIPTPATH/openbox $CONFIGPATH
ln -sf $SCRIPTPATH/conkyrc $HOME/.conkyrc
ln -sf $SCRIPTPATH/terminator $CONFIGPATH
ln -sf $SCRIPTPATH/tint2/tint2rc $CONFIGPATH/tint2
