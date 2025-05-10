#!/system/bin/sh

SKIPMOUNT=false
PROPFILE=false
POSTFSDATA=true
LATESTARTSERVICE=true

print_modname() {
  ui_print "                 "
  ui_print " Module to resize ZRAM for Android"
  ui_print " Created by Katryoshkh"
  ui_print "                 "
}

set_permissions() {
  set_perm_recursive $MODPATH 0 0 0755 0644
  set_perm $MODPATH/service.sh 0 0 0777
}

set_permissions

ui_print "ZRAM module installed successfully!"
