#!/system/bin/sh

cat <<TEXT

# Contribute: 
# Create an issue at https://github.com/dschuermann/ad-away/issues 
# 
# Changelog: 
# 2014-05-18 Now with a valid SSL certificate available at https://adaway.org/hosts.txt 
# 2013-03-29 Integrated some hosts from 
# http://adblock.gjtech.net/?format=hostfile 
# 2013-03-14 Back from the dead 
# 
# License: 
# CC Attribution 3.0 (http://creativecommons.org/licenses/by/3.0/) 
# 
# Contributions by: 
# Kicelo, Dominik Schuermann 

Quelle: https://github.com/sufficientlysecure/ad-away/wiki/HostsSources

TEXT

Hostssource1="http://adaway.org/hosts.txt"

[ `whoami` != root ] && echo "Bitte als su starten" && exit 1

Mountrw() {
mount -wo remount /system
}

Mountro() {
mount -ro remount /system
}

Updatehosts() {
[ ! -d /sdcard/tmp ] && mkdir /sdcard/tmp
wget $Hostssource1  -O /sdcard/tmp/hosts
[ $? != 0 ] && echo "Fehler beim Download (evtl. keine Verbindung? ), Abbruch" && exit 1
Mountrw
sleep 0.5
mv -f /sdcard/tmp/hosts /system/etc/hosts
chown root:root /system/etc/hosts
chmod 644 /system/etc/hosts
sync
sleep 1
Mountro
exit 0
}

Newemptyhosts() {
Mountrw
sleep 0.5
echo "127.0.0.1		    localhost" > /system/etc/hosts
chown root:root /system/etc/hosts
chmod 644 /system/etc/hosts
sync
sleep 0.5
Mountro
exit 0
}

case "$@" in

"new"|"New"|"NEW"|"emp*"|"Emp*" ) Newemptyhosts
;;
    *) Updatehosts
    ;;
esac
