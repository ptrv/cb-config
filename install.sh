#!/bin/sh

########################
script=`readlink -f $0`
scriptpath=`dirname $SCRIPT`

configpath=$HOME/.config
########################
dot_config=dot_config
bin_dir=bin
compton_conf=compton.conf
openbox_dir=openbox
openbox_autostart=$openbox_dir/autostart
openbox_rc=$openbox_dir/rc.xml
openbox_menu=$openbox_dir/menu.xml
conky_conf=conkyrc
terminator_dir=terminator
terminator_conf=$terminator_dir/config
tint2_dir=tint2
tint2_conf=$tint2_dir/tint2rc
gsimplecal_dir=gsimplecal
gsimplecal_conf=$gsimplecal_dir/config
autostart_dir=autostart
autostart_cammon_conf=$autostart_dir/cameramonitor.desktop
autostart_dropbox_conf=$autostart_dir/dropbox.desktop
xfce_perchannel_dir=xfce4/xfconf/xfce-perchannel-xml
xfce_power_manager_conf=$xfce_perchannel_dir/xfce4-power-manager.xml
MEDIA_KEYS_SCRIPT=$bin_dir/media_keys_pipe
weather_script=$bin_dir/weather.sh

########################
mkdir -p $HOME/$bin_dir

ln -sf $scriptpath/$media_keys_script $HOME/$media_keys_script
ln -sf $scriptpath/$weather_script $HOME/$weather_script

ln -sf $scriptpath/$dot_config/$compton_conf $configpath/$compton_conf

mkdir -p $configpath/$openbox_dir
ln -sf $scriptpath/$dot_config/$openbox_autostart $configpath/$openbox_autostart
ln -sf $scriptpath/$dot_config/$openbox_rc $configpath/$openbox_rc
ln -sf $scriptpath/$dot_config/$openbox_menu $configpath/$openbox_menu

ln -sf $scriptpath/$conky_conf $HOME/.$conky_conf

mkdir -p $configpath/$terminator_dir
ln -sf $scriptpath/$dot_config/$terminator_conf $configpath/$terminator_conf

mkdir -p $configpath/$tint2_dir
ln -sf $scriptpath/$dot_config/$tint2_conf $configpath/$tint2_conf

mkdir -p $configpath/$gsimplecal_dir
ln -sf $scriptpath/$dot_config/$gsimplecal_conf $configpath/$gsimplecal_conf

mkdir -p $configpath/$autostart_dir
ln -sf $scriptpath/$dot_config/$autostart_cammon_conf $configpath/$autostart_cammon_conf
ln -sf $scriptpath/$dot_config/$autostart_dropbox_conf $configpath/$autostart_dropbox_conf

mkdir -p $configpath/$xfce_perchannel_dir
ln -sf $scriptpath/$dot_config/$xfce_power_manager_conf $configpath/$xfce_power_manager_conf
########################
