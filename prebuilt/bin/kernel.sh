#!/system/bin/sh

[ $(whoami) != "root" ] && echo "Bitte als su ausfüren"|exit 1

LG() {
echo 118 > /sys/dev/char/10:7/blue_blacks
echo 114 > /sys/dev/char/10:7/blue_greys
echo 21 > /sys/dev/char/10:7/blue_mids
echo 48 > /sys/dev/char/10:7/blue_whites
echo 0 > /sys/dev/char/10:7/brightness
echo 0 > /sys/dev/char/10:7/contrast
echo 118 > /sys/dev/char/10:7/green_blacks
echo 114 > /sys/dev/char/10:7/green_greys
echo 21 > /sys/dev/char/10:7/green_mids
echo 48 > /sys/dev/char/10:7/green_whites
echo 118 > /sys/dev/char/10:7/red_blacks
echo 114 > /sys/dev/char/10:7/red_greys
echo 21 > /sys/dev/char/10:7/red_mids
echo 48 > /sys/dev/char/10:7/red_whites
echo 80 > /sys/dev/char/10:7/saturation
echo "255 255 255" > /sys/devices/platform/kcal_ctrl.0/kcal
}

Morfic() {
echo 67 > /sys/dev/char/10:7/blue_blacks
echo 20 > /sys/dev/char/10:7/blue_greys
echo 82 > /sys/dev/char/10:7/blue_mids
echo 50 > /sys/dev/char/10:7/blue_whites
echo 2 > /sys/dev/char/10:7/brightness
echo 29 > /sys/dev/char/10:7/contrast
echo 67 > /sys/dev/char/10:7/green_blacks
echo 20 > /sys/dev/char/10:7/green_greys
echo 82 > /sys/dev/char/10:7/green_mids
echo 50 > /sys/dev/char/10:7/green_whites
echo 67 > /sys/dev/char/10:7/red_blacks
echo 20 > /sys/dev/char/10:7/red_greys
echo 82 > /sys/dev/char/10:7/red_mids
echo 50 > /sys/dev/char/10:7/red_whites
echo 112 > /sys/dev/char/10:7/saturation
echo "255 255 255" > /sys/devices/platform/kcal_ctrl.0/kcal
}

Own1() {
echo 116 > /sys/dev/char/10:7/blue_blacks
echo 32 > /sys/dev/char/10:7/blue_greys
echo 35 > /sys/dev/char/10:7/blue_mids
echo 48 > /sys/dev/char/10:7/blue_whites
echo 0 > /sys/dev/char/10:7/brightness
echo 0 > /sys/dev/char/10:7/contrast
echo 118 > /sys/dev/char/10:7/green_blacks
echo 64 > /sys/dev/char/10:7/green_greys
echo 68 > /sys/dev/char/10:7/green_mids
echo 48 > /sys/dev/char/10:7/green_whites
echo 118 > /sys/dev/char/10:7/red_blacks
echo 64 > /sys/dev/char/10:7/red_greys
echo 68 > /sys/dev/char/10:7/red_mids
echo 48 > /sys/dev/char/10:7/red_whites
echo 80 > /sys/dev/char/10:7/saturation
echo "255 255 255" > /sys/devices/platform/kcal_ctrl.0/kcal
}

case $@ in

  dt-on)
  echo 1 | tee /sys/devices/virtual/input/lge_touch/dt_wake_enabled
  ;;

  dt-off)
  echo 0 | tee /sys/devices/virtual/input/lge_touch/dt_wake_enabled
  ;;

  lg)
  LG
  ;;

  morfic)
  Morfic
  ;;
  
  own1)
  Own1
  ;;

  otg-on)
  echo 1 | tee /sys/module/msm_otg/parameters/otg_hack_enable
  ;;

  otg-off)
  echo 0 | tee /sys/module/msm_otg/parameters/otg_hack_enable
  ;;

*)
cat <<TEXT

Parameter:

dt-on    : Double-Tap to Wake einschalten
dt-off   : Double-Tap to Wake ausschalten
otg-on   : OTG An
otg-off  : OTG Aus
lg       : LG Farbeinstellung
morfic   : Morfic's Farbeinstellung
own1     : Meine Farbeinstellung

TEXT
;;
esac