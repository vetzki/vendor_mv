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

Own2 () {
echo 119 > /sys/dev/char/10:7/blue_blacks
echo 0 > /sys/dev/char/10:7/blue_greys
echo 119 > /sys/dev/char/10:7/blue_mids
echo 7 > /sys/dev/char/10:7/blue_whites
echo 0 > /sys/dev/char/10:7/brightness
echo 31 > /sys/dev/char/10:7/contrast
echo 119 > /sys/dev/char/10:7/green_blacks
echo 0 > /sys/dev/char/10:7/green_greys
echo 119 > /sys/dev/char/10:7/green_mids
echo 7 > /sys/dev/char/10:7/green_whites
echo 119 > /sys/dev/char/10:7/red_blacks
echo 0 > /sys/dev/char/10:7/red_greys
echo 119 > /sys/dev/char/10:7/red_mids
echo 7 > /sys/dev/char/10:7/red_whites
echo 2 > /sys/dev/char/10:7/saturation
echo "255 255 255" > /sys/devices/platform/kcal_ctrl.0/kcal
}

Xda1 () {
echo 119 > /sys/dev/char/10:7/blue_blacks
echo 0 > /sys/dev/char/10:7/blue_greys
echo 119 > /sys/dev/char/10:7/blue_mids
echo 7 > /sys/dev/char/10:7/blue_whites
echo 0 > /sys/dev/char/10:7/brightness
echo 31 > /sys/dev/char/10:7/contrast
echo 119 > /sys/dev/char/10:7/green_blacks
echo 0 > /sys/dev/char/10:7/green_greys
echo 119 > /sys/dev/char/10:7/green_mids
echo 7 > /sys/dev/char/10:7/green_whites
echo 119 > /sys/dev/char/10:7/red_blacks
echo 0 > /sys/dev/char/10:7/red_greys
echo 119 > /sys/dev/char/10:7/red_mids
echo 7 > /sys/dev/char/10:7/red_whites
echo 2 > /sys/dev/char/10:7/saturation
echo "249 249 255" > /sys/devices/platform/kcal_ctrl.0/kcal
}

Xda2 () {
echo 119 > /sys/dev/char/10:7/blue_blacks
echo 0 > /sys/dev/char/10:7/blue_greys
echo 119 > /sys/dev/char/10:7/blue_mids
echo 7 > /sys/dev/char/10:7/blue_whites
echo 0 > /sys/dev/char/10:7/brightness
echo 0 > /sys/dev/char/10:7/contrast
echo 119 > /sys/dev/char/10:7/green_blacks
echo 0 > /sys/dev/char/10:7/green_greys
echo 119 > /sys/dev/char/10:7/green_mids
echo 7 > /sys/dev/char/10:7/green_whites
echo 119 > /sys/dev/char/10:7/red_blacks
echo 0 > /sys/dev/char/10:7/red_greys
echo 119 > /sys/dev/char/10:7/red_mids
echo 7 > /sys/dev/char/10:7/red_whites
echo 119 > /sys/dev/char/10:7/saturation
echo "255 255 255" > /sys/devices/platform/kcal_ctrl.0/kcal
}

6500k422 () {
echo 0 > /sys/dev/char/10:7/blue_blacks
echo 0 > /sys/dev/char/10:7/blue_greys
echo 0 > /sys/dev/char/10:7/blue_mids
echo 0 > /sys/dev/char/10:7/blue_whites
echo 8 > /sys/dev/char/10:7/brightness
echo 0 > /sys/dev/char/10:7/contrast
echo 0 > /sys/dev/char/10:7/green_blacks
echo 0 > /sys/dev/char/10:7/green_greys
echo 0 > /sys/dev/char/10:7/green_mids
echo 0 > /sys/dev/char/10:7/green_whites
echo 0 > /sys/dev/char/10:7/red_blacks
echo 0 > /sys/dev/char/10:7/red_greys
echo 0 > /sys/dev/char/10:7/red_mids
echo 0 > /sys/dev/char/10:7/red_whites
echo 71 > /sys/dev/char/10:7/saturation
echo "255 240 222" > /sys/devices/platform/kcal_ctrl.0/kcal
}

Xda3 () {
echo 119 > /sys/dev/char/10:7/blue_blacks
echo 0 > /sys/dev/char/10:7/blue_greys
echo 113 > /sys/dev/char/10:7/blue_mids
echo 3 > /sys/dev/char/10:7/blue_whites
echo 6 > /sys/dev/char/10:7/brightness
echo 0 > /sys/dev/char/10:7/contrast
echo 119 > /sys/dev/char/10:7/green_blacks
echo 0 > /sys/dev/char/10:7/green_greys
echo 113 > /sys/dev/char/10:7/green_mids
echo 3 > /sys/dev/char/10:7/green_whites
echo 119 > /sys/dev/char/10:7/red_blacks
echo 0 > /sys/dev/char/10:7/red_greys
echo 113 > /sys/dev/char/10:7/red_mids
echo 3 > /sys/dev/char/10:7/red_whites
echo 71 > /sys/dev/char/10:7/saturation
echo "220 228 222" > /sys/devices/platform/kcal_ctrl.0/kcal
}

Xda4 () {
echo 119 > /sys/dev/char/10:7/blue_blacks
echo 0 > /sys/dev/char/10:7/blue_greys
echo 103 > /sys/dev/char/10:7/blue_mids
echo 23 > /sys/dev/char/10:7/blue_whites
echo 8 > /sys/dev/char/10:7/brightness
echo 25 > /sys/dev/char/10:7/contrast
echo 119 > /sys/dev/char/10:7/green_blacks
echo 0 > /sys/dev/char/10:7/green_greys
echo 103 > /sys/dev/char/10:7/green_mids
echo 23 > /sys/dev/char/10:7/green_whites
echo 119 > /sys/dev/char/10:7/red_blacks
echo 0 > /sys/dev/char/10:7/red_greys
echo 103 > /sys/dev/char/10:7/red_mids
echo 23 > /sys/dev/char/10:7/red_whites
echo 71 > /sys/dev/char/10:7/saturation
echo "235 245 255" > /sys/devices/platform/kcal_ctrl.0/kcal
}

XperiaZ1c () {
echo 119 > /sys/dev/char/10:7/blue_blacks
echo 0 > /sys/dev/char/10:7/blue_greys
echo 87 > /sys/dev/char/10:7/blue_mids
echo 1 > /sys/dev/char/10:7/blue_whites
echo 0 > /sys/dev/char/10:7/brightness
echo 0 > /sys/dev/char/10:7/contrast
echo 119 > /sys/dev/char/10:7/green_blacks
echo 0 > /sys/dev/char/10:7/green_greys
echo 87 > /sys/dev/char/10:7/green_mids
echo 2 > /sys/dev/char/10:7/green_whites
echo 119 > /sys/dev/char/10:7/red_blacks
echo 0 > /sys/dev/char/10:7/red_greys
echo 87 > /sys/dev/char/10:7/red_mids
echo 2 > /sys/dev/char/10:7/red_whites
echo 3 > /sys/dev/char/10:7/saturation
echo "255 241 225" > /sys/devices/platform/kcal_ctrl.0/kcal
}

6500k43 () {
echo 119 > /sys/dev/char/10:7/blue_blacks
echo 114 > /sys/dev/char/10:7/blue_greys
echo 21 > /sys/dev/char/10:7/blue_mids
echo 48 > /sys/dev/char/10:7/blue_whites
echo 8 > /sys/dev/char/10:7/brightness
echo 0 > /sys/dev/char/10:7/contrast
echo 119 > /sys/dev/char/10:7/green_blacks
echo 114 > /sys/dev/char/10:7/green_greys
echo 21 > /sys/dev/char/10:7/green_mids
echo 48 > /sys/dev/char/10:7/green_whites
echo 119 > /sys/dev/char/10:7/red_blacks
echo 113 > /sys/dev/char/10:7/red_greys
echo 20 > /sys/dev/char/10:7/red_mids
echo 48 > /sys/dev/char/10:7/red_whites
echo 71 > /sys/dev/char/10:7/saturation
echo "255 240 214" > /sys/devices/platform/kcal_ctrl.0/kcal
}

Iphone5 () {
echo 119 > /sys/dev/char/10:7/blue_blacks
echo 0 > /sys/dev/char/10:7/blue_greys
echo 119 > /sys/dev/char/10:7/blue_mids
echo 7 > /sys/dev/char/10:7/blue_whites
echo 7 > /sys/dev/char/10:7/brightness
echo 0 > /sys/dev/char/10:7/contrast
echo 119 > /sys/dev/char/10:7/green_blacks
echo 0 > /sys/dev/char/10:7/green_greys
echo 119 > /sys/dev/char/10:7/green_mids
echo 7 > /sys/dev/char/10:7/green_whites
echo 119 > /sys/dev/char/10:7/red_blacks
echo 0 > /sys/dev/char/10:7/red_greys
echo 119 > /sys/dev/char/10:7/red_mids
echo 7 > /sys/dev/char/10:7/red_whites
echo 119 > /sys/dev/char/10:7/saturation
echo "255 248 240" > /sys/devices/platform/kcal_ctrl.0/kcal
}

Neutral () {
echo 119 > /sys/dev/char/10:7/blue_blacks
echo 4 > /sys/dev/char/10:7/blue_greys
echo 87 > /sys/dev/char/10:7/blue_mids
echo 5 > /sys/dev/char/10:7/blue_whites
echo 8 > /sys/dev/char/10:7/brightness
echo 0 > /sys/dev/char/10:7/contrast
echo 119 > /sys/dev/char/10:7/green_blacks
echo 4 > /sys/dev/char/10:7/green_greys
echo 87 > /sys/dev/char/10:7/green_mids
echo 5 > /sys/dev/char/10:7/green_whites
echo 119 > /sys/dev/char/10:7/red_blacks
echo 4 > /sys/dev/char/10:7/red_greys
echo 87 > /sys/dev/char/10:7/red_mids
echo 5 > /sys/dev/char/10:7/red_whites
echo 87 > /sys/dev/char/10:7/saturation
echo "220 225 220" > /sys/devices/platform/kcal_ctrl.0/kcal
}

Warm () {
echo 119 > /sys/dev/char/10:7/blue_blacks
echo 3 > /sys/dev/char/10:7/blue_greys
echo 71 > /sys/dev/char/10:7/blue_mids
echo 3 > /sys/dev/char/10:7/blue_whites
echo 8 > /sys/dev/char/10:7/brightness
echo 0 > /sys/dev/char/10:7/contrast
echo 119 > /sys/dev/char/10:7/green_blacks
echo 3 > /sys/dev/char/10:7/green_greys
echo 71 > /sys/dev/char/10:7/green_mids
echo 3 > /sys/dev/char/10:7/green_whites
echo 119 > /sys/dev/char/10:7/red_blacks
echo 3 > /sys/dev/char/10:7/red_greys
echo 71 > /sys/dev/char/10:7/red_mids
echo 3 > /sys/dev/char/10:7/red_whites
echo 23 > /sys/dev/char/10:7/saturation
echo "230 220 215" > /sys/devices/platform/kcal_ctrl.0/kcal
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

  own2)
  Own2
  ;;

  xda1)
  Xda1
  ;;

  xda2)
  Xda2
  ;;

  6500k422)
  6500k422
  ;;

  xda3)
  Xda3
  ;;

  xda4)
  Xda4
  ;;

  xperiaz1c)
  XperiaZ1c
  ;;

  6500k43)
  6500k43
  ;;

  iphone5)
  Iphone5
  ;;

  neutral)
  Neutral
  ;;

  warm)
  Warm
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
own2     : Meine Farbeinstellung 2
xda1     : Farbeinstellung 1 (von xda)
xda2     : Farbeinstellung 2 (von xda)
6500k422 : Farbeinstellung 6500k 4.2.2 (von xda)
6500k43  : Farbeinstellung 6500k 4.3 (von xda)
xda3     : Farbeinstellung 3 (von xda)
xda4     : Farbeinstellung 4 (von xda)
xperiaz1c: "Xperia Z1c" Farbeinstellung lt. xda
iphone5  : "Iphone5" Farbeinstellung (xda)
neutral  : Neutrale Farbeinstellung (xda)
warm     : "warme" Farbeinstellung (xda)

TEXT
;;
esac
