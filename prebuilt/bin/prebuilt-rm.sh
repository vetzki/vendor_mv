#!/system/bin/sh

vlc() {
mount -wo remount /system
rm -rf /system/app/vlc-player \
/data/data/org.videolan.vlc

rm /system/lib/libanw.10.so \
/system/lib/libanw.13.so \
/system/lib/libanw.14.so \
/system/lib/libanw.18.so \
/system/lib/libanw.21.so \
/system/lib/libiomx.10.so \
/system/lib/libiomx.13.so \
/system/lib/libiomx.14.so \
/system/lib/libvlcjni.so \
/data/dalvik-cache/profiles/org.videolan.vlc \
/data/dalvik-cache/arm/system@app@vlc-player@vlc-player.apk@classes.dex
sync
mount -ro remount /system

echo "Bitte neustarten"

exit 0
}

tc() {
mount -wo remount /system
rm -rf /system/app/totalcmd \
/data/data/com.ghisler.android.TotalCommander

rm /system/lib/libtcmadmin.so \
/system/lib/libtcnative.so \
/system/lib/libtcunrar.so \
/data/dalvik-cache/profiles/com.ghisler.android.TotalCommander \
/data/dalvik-cache/arm/system@app@totalcmd@totalcmd.apk@classes.dex
sync
mount -ro remount /system

echo "Bitte neustarten"

exit 0
}

quickpic() {
mount -wo remount /system
rm -rf /system/app/quickpic_4.2 \
/data/data/com.alensw.PicFolder

rm /system/lib/libqpicjni152.so \
/data/dalvik-cache/profiles/com.alensw.PicFolder \
/data/dalvik-cache/arm/system@app@quickpic_4.2@quickpic_4.2.apk@classes.dex
sync
mount -ro remount /system

echo "Bitte neustarten"

exit 0
}

browser() {
mount -wo remount /system
rm -rf /system/app/Browser \
/data/data/com.android.browser

rm /data/dalvik-cache/arm/system@app@Browser@Browser.apk@classes.dex \
/data/dalvik-cache/profiles/com.android.browser
sync
mount -ro remount /system

echo "Bitte neustarten"

exit 0
}

case "$@" in
 vlc) vlc
 ;;
   tc) tc
   ;;
     quickpic) quickpic
     ;;
       browser) browser
       ;;
*)
cat <<TEXT

prebuilt-rm vlc      : VLC Player entfernen
prebuilt-rm tc       : Total Commander entfernen
prebuilt-rm quickpic : Quickpic entfernen
prebuilt-rm browser  : AOSP Browser entfernen

TEXT
exit 0
;;
esac
