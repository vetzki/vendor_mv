#!/system/bin/sh

[ $(whoami) != "root" ] && echo "Bitte als su ausfüren"|exit 1

Google() {
echo "108 32 35 116 0 31 16 80 51 3" >/sys/devices/platform/mipi_lgit.1537/kgamma_b
echo "76 64 68 118 1 0 0 48 32 1" >/sys/devices/platform/mipi_lgit.1537/kgamma_g
echo "76 64 68 118 1 0 0 48 32 1" > /sys/devices/platform/mipi_lgit.1537/kgamma_r
echo "255 255 255" > /sys/devices/platform/kcal_ctrl.0/kcal
}

LG() {
echo "127 114 21 118 0 0 0 80 48 2" >/sys/devices/platform/mipi_lgit.1537/kgamma_b
echo "127 114 21 118 0 0 0 80 48 2" >/sys/devices/platform/mipi_lgit.1537/kgamma_g
echo "127 114 21 118 0 0 0 80 48 2" > /sys/devices/platform/mipi_lgit.1537/kgamma_r
echo "255 255 255" > /sys/devices/platform/kcal_ctrl.0/kcal
}

PABrighter() {
echo "86 49 21 118 0 31 9 64 48 2" >/sys/devices/platform/mipi_lgit.1537/kgamma_b
echo "86 49 21 118 0 31 9 64 48 2" >/sys/devices/platform/mipi_lgit.1537/kgamma_g
echo "86 49 21 118 0 31 9 64 48 2" > /sys/devices/platform/mipi_lgit.1537/kgamma_r
echo "245 244 240" > /sys/devices/platform/kcal_ctrl.0/kcal
}

PAContrastry() {
echo "134 64 68 118 0 26 0 64 48 2" >/sys/devices/platform/mipi_lgit.1537/kgamma_b
echo "134 64 68 118 0 26 0 64 48 2" >/sys/devices/platform/mipi_lgit.1537/kgamma_g
echo "134 64 68 118 0 26 0 64 48 2" > /sys/devices/platform/mipi_lgit.1537/kgamma_r
echo "245 244 240" > /sys/devices/platform/kcal_ctrl.0/kcal
}

PAHalfbreed() {
echo "122 64 68 118 0 25 4 66 32 1" >/sys/devices/platform/mipi_lgit.1537/kgamma_b
echo "122 64 68 118 0 25 4 66 32 1" >/sys/devices/platform/mipi_lgit.1537/kgamma_g
echo "122 64 68 118 0 25 4 66 32 1" > /sys/devices/platform/mipi_lgit.1537/kgamma_r
echo "255 255 255" > /sys/devices/platform/kcal_ctrl.0/kcal
}

case $@ in

  dt-on)
  echo 1 | tee /sys/devices/virtual/input/lge_touch/dt_wake_enabled
  ;;

  dt-off)
  echo 0 | tee /sys/devices/virtual/input/lge_touch/dt_wake_enabled
  ;;

  google)
  Google
  ;;
  
  lg)
  LG
  ;;
  
  pabright)
  PABrighter
  ;;
  
  pacont)
  PAContrastry
  ;;
  
  pahalf)
  PAHalfbreed
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
google   : Google Farbeinstellung
lg       : LG Farbeinstellung
pabright : "PA Brighter" Farbeinstellung
pacont   : "PA Contrastry" Farbeinstellung
pahalf   : "PA Halfbreed" Farbeinstellung

TEXT
;;
esac