#!/bin/sh
#
# Wunderground (r) RSS weather tool for conky
#
# USAGE: weather.sh <stationid>
#
# source: https://bbs.archlinux.org/viewtopic.php?id=37381
# modifications: (c) Peter Vasil 2013

if [ -z $1 ]; then
    echo
    echo "USAGE: weather.sh <stationid>"
    echo
    exit 0;
fi

curl -s http://rss.wunderground.com/auto/rss_full/global/stations/$1.xml\?units\=metric | perl -ne 'if (/Current Conditions/) {chomp;/\<title\>Current Conditions : (.*)? - .*\<\/title\>/; print "$1"; }'
