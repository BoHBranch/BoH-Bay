#!/bin/sh

mkdir /byond
chown $RUNAS:$RUNAS /byond /boh bastionofhestia.rsc

gosu $RUNAS DreamDaemon bastionofhestia.dmb 8000 -trusted -verbose
