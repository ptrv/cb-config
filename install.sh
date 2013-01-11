#!/bin/sh

########################
SCRIPT=`readlink -f $0`
SCRIPTPATH=`dirname $SCRIPT`

CONFIGPATH=$HOME/.config
########################
DOT_CONFIG=dot_config
COMPTON_CONF=compton.conf
OPENBOX_DIR=openbox
OPENBOX_AUTOSTART=$OPENBOX_DIR/autostart
OPENBOX_RC=$OPENBOX_DIR/rc.xml
OPENBOX_MENU=$OPENBOX_DIR/menu.xml
CONKY_CONF=conkyrc
TERMINATOR_DIR=terminator
TERMINATOR_CONF=$TERMINATOR_DIR/config
TINT2_DIR=tint2
TINT2_CONF=$TINT2_DIR/tint2rc
GSIMPLECAL_DIR=gsimplecal
GSIMPLECAL_CONF=$GSIMPLECAL_DIR/config
AUTOSTART_DIR=autostart
AUTOSTART_CAMMON_CONF=$AUTOSTART_DIR/cameramonitor.desktop
AUTOSTART_DROPBOX_CONF=$AUTOSTART_DIR/dropbox.desktop
XFCE_PERCHANNEL_DIR=xfce4/xfconf/xfce-perchannel-xml
XFCE_POWER_MANAGER_CONF=$XFCE_PERCHANNEL_DIR/xfce4-power-manager.xml

########################

ln -sf $SCRIPTPATH/$COMPTON_CONF $CONFIGPATH/$COMPTON_CONF

mkdir -p $CONFIGPATH/$OPENBOX_DIR
ln -sf $SCRIPTPATH/$DOT_CONFIG/$OPENBOX_AUTOSTART $CONFIGPATH/$OPENBOX_AUTOSTART
ln -sf $SCRIPTPATH/$DOT_CONFIG/$OPENBOX_RC $CONFIGPATH/$OPENBOX_RC
ln -sf $SCRIPTPATH/$DOT_CONFIG/$OPENBOX_MENU $CONFIGPATH/$OPENBOX_MENU

ln -sf $SCRIPTPATH/$CONKY_CONF $HOME/.$CONKY_CONF

mkdir -p $CONFIGPATH/$TERMINATOR_DIR
ln -sf $SCRIPTPATH/$DOT_CONFIG/$TERMINATOR_CONF $CONFIGPATH/$TERMINATOR_CONF

mkdir -p $CONFIGPATH/$TINT2_DIR
ln -sf $SCRIPTPATH/$DOT_CONFIG/$TINT2_CONF $CONFIGPATH/$TINT2_CONF

mkdir -p $CONFIGPATH/$GSIMPLECAL_DIR
ln -sf $SCRIPTPATH/$DOT_CONFIG/$GSIMPLECAL_CONF $CONFIGPATH/$GSIMPLECAL_CONF

mkdir -p $CONFIGPATH/$AUTOSTART_DIR
ln -sf $SCRIPTPATH/$DOT_CONFIG/$AUTOSTART_CAMMON_CONF $CONFIGPATH/$AUTOSTART_CAMMON_CONF
ln -sf $SCRIPTPATH/$DOT_CONFIG/$AUTOSTART_DROPBOX_CONF $CONFIGPATH/$AUTOSTART_DROPBOX_CONF

mkdir -p $CONFIGPATH/$XFCE_PERCHANNEL_DIR
ln -sf $SCRIPTPATH/$DOT_CONFIG/$XFCE_POWER_MANAGER_CONF $CONFIGPATH/$XFCE_POWER_MANAGER_CONF
########################
