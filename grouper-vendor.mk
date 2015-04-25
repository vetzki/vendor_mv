# Copyright (C) 2012 The CyanogenMod Project
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#      http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.

# Copy Own Sound File(s)
PRODUCT_COPY_FILES := \
    vendor/mv/sounds/notifications/tuner.ogg:system/media/audio/notifications/tuner.ogg \
    vendor/mv/system/media/LMspeed_508.emd:system/vendor/media/LMspeed_508.emd \
    vendor/mv/system/media/PFFprec_600.emd:system/vendor/media/PFFprec_600.emd

# Bender Sound
PRODUCT_COPY_FILES += \
    vendor/mv/sounds/notifications/Bender.ogg:system/media/audio/alarms/Bender.ogg \
    vendor/mv/sounds/notifications/Bender.ogg:system/media/audio/notifications/Bender.ogg

# my-specific (aosp) init file
PRODUCT_COPY_FILES += \
    vendor/mv/prebuilt/etc/init.aosp.rc:root/init.aosp.rc

# Build.prop and product Overrides
PRODUCT_PROPERTY_OVERRIDES += \
    persist.sys.root_access=1 \
    ro.build.selinux=1 \
    keyguard.no_require_sim=true \
    ro.url.legal=http://www.google.com/intl/%s/mobile/android/basic/phone-legal.html \
    ro.url.legal.android_privacy=http://www.google.com/intl/%s/mobile/android/basic/privacy.html \
    ro.com.google.clientidbase=android-google \
    ro.com.android.wifi-watchlist=GoogleGuest \
    ro.setupwizard.enterprise_mode=1 \
    ro.com.android.dateformat=MM-dd-yyyy \
    ro.com.android.dataroaming=false \
    ro.config.notification_sound=lapetus.ogg \
    ro.config.alarm_alert=Oxygen.ogg

# init.d support
PRODUCT_COPY_FILES += \
    vendor/mv/prebuilt/bin/sysinit:system/bin/sysinit \
    vendor/mv/prebuilt/bin/make-swapfile.sh:system/bin/mkswapfile

# userinit support
PRODUCT_COPY_FILES += \
    vendor/mv/prebuilt/etc/init.d/90userinit:system/etc/init.d/90userinit

# Gesture Input AOSP Keyboard
PRODUCT_COPY_FILES += \
    vendor/mv/prebuilt/lib/libjni_unbundled_latinimegoogle.so:system/lib/libjni_unbundled_latinimegoogle.so

# update-hosts skript & prebuilt-rm
PRODUCT_COPY_FILES += \
    vendor/mv/prebuilt/bin/update-hosts.sh:system/xbin/update-hosts \
    vendor/mv/prebuilt/bin/prebuilt-rm.sh:system/bin/prebuilt-rm


# OTG
#PRODUCT_COPY_FILES += \
#    frameworks/native/data/etc/android.hardware.usb.host.xml:system/etc/permissions/android.hardware.usb.host.xml

# selinux
#PRODUCT_COPY_FILES += \
#    vendor/mv/prebuilt/etc/init.d/50selinuxrelabel:system/etc/init.d/50selinuxrelabel

# Module / WLAN init.d script
#PRODUCT_COPY_FILES += \
vendor/mv/prebuilt/modules_tegra/easycap.ko:system/lib/modules/easycap.ko

# SU Support
#SUPERUSER_EMBEDDED := true
#PRODUCT_PACKAGES := \
     Superuser \
     su

# Extra Packages
PRODUCT_PACKAGES += \
	MusicFX \
	vlc-player \
	Launcher2 \
	LockClock \
	Terminal \
	totalcmd \
	quickpic_4.2 \
	FDroid \
	unrar \
	zip

# Extra Packages
#PRODUCT_PACKAGES += \
	CMFileManager \
	Apollo \
	audio_effects.conf \
	DSPManager \
	libcyanogen-dsp \
	PhotoPhase \
	Launcher2

# Tools
#PRODUCT_PACKAGES += \
	libsepol \
	bash \
	busybox \
	nano \
	htop \
	lsof \
	micro_bench \
	ntfs-3g \
	ntfsfix \
	oprofiled \
	rsync \
	strace

# Openssh
#PRODUCT_PACKAGES += \
	scp \
	sftp \
	ssh \
	sshd \
	sshd_config \
	ssh-keygen \
	start-ssh

# F2FS
#PRODUCT_PACKAGES += \
	mkfs.f2fs \
	fsck.f2fs

# MODULE
PRODUCT_COPY_FILES += \
vendor/mv/prebuilt/modules_tegra/af9013.ko:/system/lib/modules/af9013.ko \
vendor/mv/prebuilt/modules_tegra/atbm8830.ko:/system/lib/modules/atbm8830.ko \
vendor/mv/prebuilt/modules_tegra/ath9k_common.ko:/system/lib/modules/ath9k_common.ko \
vendor/mv/prebuilt/modules_tegra/ath9k_htc.ko:/system/lib/modules/ath9k_htc.ko \
vendor/mv/prebuilt/modules_tegra/ath9k_hw.ko:/system/lib/modules/ath9k_hw.ko \
vendor/mv/prebuilt/modules_tegra/ath9k.ko:/system/lib/modules/ath9k.ko \
vendor/mv/prebuilt/modules_tegra/ath.ko:/system/lib/modules/ath.ko \
vendor/mv/prebuilt/modules_tegra/ati_remote2.ko:/system/lib/modules/ati_remote2.ko \
vendor/mv/prebuilt/modules_tegra/ati_remote.ko:/system/lib/modules/ati_remote.ko \
vendor/mv/prebuilt/modules_tegra/au8522.ko:/system/lib/modules/au8522.ko \
vendor/mv/prebuilt/modules_tegra/b2c2-flexcop.ko:/system/lib/modules/b2c2-flexcop.ko \
vendor/mv/prebuilt/modules_tegra/b2c2-flexcop-pci.ko:/system/lib/modules/b2c2-flexcop-pci.ko \
vendor/mv/prebuilt/modules_tegra/b2c2-flexcop-usb.ko:/system/lib/modules/b2c2-flexcop-usb.ko \
vendor/mv/prebuilt/modules_tegra/bcm3510.ko:/system/lib/modules/bcm3510.ko \
vendor/mv/prebuilt/modules_tegra/cp210x.ko:/system/lib/modules/cp210x.ko \
vendor/mv/prebuilt/modules_tegra/crc-itu-t.ko:/system/lib/modules/crc-itu-t.ko \
vendor/mv/prebuilt/modules_tegra/cx22700.ko:/system/lib/modules/cx22700.ko \
vendor/mv/prebuilt/modules_tegra/cx22702.ko:/system/lib/modules/cx22702.ko \
vendor/mv/prebuilt/modules_tegra/cx24110.ko:/system/lib/modules/cx24110.ko \
vendor/mv/prebuilt/modules_tegra/cx24113.ko:/system/lib/modules/cx24113.ko \
vendor/mv/prebuilt/modules_tegra/cx24116.ko:/system/lib/modules/cx24116.ko \
vendor/mv/prebuilt/modules_tegra/cx24123.ko:/system/lib/modules/cx24123.ko \
vendor/mv/prebuilt/modules_tegra/cxd2820r.ko:/system/lib/modules/cxd2820r.ko \
vendor/mv/prebuilt/modules_tegra/ddbridge.ko:/system/lib/modules/ddbridge.ko \
vendor/mv/prebuilt/modules_tegra/dib0070.ko:/system/lib/modules/dib0070.ko \
vendor/mv/prebuilt/modules_tegra/dib0090.ko:/system/lib/modules/dib0090.ko \
vendor/mv/prebuilt/modules_tegra/dib3000mb.ko:/system/lib/modules/dib3000mb.ko \
vendor/mv/prebuilt/modules_tegra/dib3000mc.ko:/system/lib/modules/dib3000mc.ko \
vendor/mv/prebuilt/modules_tegra/dib7000m.ko:/system/lib/modules/dib7000m.ko \
vendor/mv/prebuilt/modules_tegra/dib7000p.ko:/system/lib/modules/dib7000p.ko \
vendor/mv/prebuilt/modules_tegra/dib8000.ko:/system/lib/modules/dib8000.ko \
vendor/mv/prebuilt/modules_tegra/dib9000.ko:/system/lib/modules/dib9000.ko \
vendor/mv/prebuilt/modules_tegra/dibx000_common.ko:/system/lib/modules/dibx000_common.ko \
vendor/mv/prebuilt/modules_tegra/dm1105.ko:/system/lib/modules/dm1105.ko \
vendor/mv/prebuilt/modules_tegra/drxd.ko:/system/lib/modules/drxd.ko \
vendor/mv/prebuilt/modules_tegra/drxk.ko:/system/lib/modules/drxk.ko \
vendor/mv/prebuilt/modules_tegra/ds3000.ko:/system/lib/modules/ds3000.ko \
vendor/mv/prebuilt/modules_tegra/dsbr100.ko:/system/lib/modules/dsbr100.ko \
vendor/mv/prebuilt/modules_tegra/dvb-core.ko:/system/lib/modules/dvb-core.ko \
vendor/mv/prebuilt/modules_tegra/dvb_dummy_fe.ko:/system/lib/modules/dvb_dummy_fe.ko \
vendor/mv/prebuilt/modules_tegra/dvb-pll.ko:/system/lib/modules/dvb-pll.ko \
vendor/mv/prebuilt/modules_tegra/dvb-ttusb-budget.ko:/system/lib/modules/dvb-ttusb-budget.ko \
vendor/mv/prebuilt/modules_tegra/dvb-usb-a800.ko:/system/lib/modules/dvb-usb-a800.ko \
vendor/mv/prebuilt/modules_tegra/dvb-usb-af9005.ko:/system/lib/modules/dvb-usb-af9005.ko \
vendor/mv/prebuilt/modules_tegra/dvb-usb-af9005-remote.ko:/system/lib/modules/dvb-usb-af9005-remote.ko \
vendor/mv/prebuilt/modules_tegra/dvb-usb-af9015.ko:/system/lib/modules/dvb-usb-af9015.ko \
vendor/mv/prebuilt/modules_tegra/dvb-usb-anysee.ko:/system/lib/modules/dvb-usb-anysee.ko \
vendor/mv/prebuilt/modules_tegra/dvb-usb-au6610.ko:/system/lib/modules/dvb-usb-au6610.ko \
vendor/mv/prebuilt/modules_tegra/dvb-usb-az6027.ko:/system/lib/modules/dvb-usb-az6027.ko \
vendor/mv/prebuilt/modules_tegra/dvb-usb-ce6230.ko:/system/lib/modules/dvb-usb-ce6230.ko \
vendor/mv/prebuilt/modules_tegra/dvb-usb-cinergyT2.ko:/system/lib/modules/dvb-usb-cinergyT2.ko \
vendor/mv/prebuilt/modules_tegra/dvb-usb-cxusb.ko:/system/lib/modules/dvb-usb-cxusb.ko \
vendor/mv/prebuilt/modules_tegra/dvb-usb-dib0700.ko:/system/lib/modules/dvb-usb-dib0700.ko \
vendor/mv/prebuilt/modules_tegra/dvb-usb-dibusb-common.ko:/system/lib/modules/dvb-usb-dibusb-common.ko \
vendor/mv/prebuilt/modules_tegra/dvb-usb-dibusb-mb.ko:/system/lib/modules/dvb-usb-dibusb-mb.ko \
vendor/mv/prebuilt/modules_tegra/dvb-usb-dibusb-mc.ko:/system/lib/modules/dvb-usb-dibusb-mc.ko \
vendor/mv/prebuilt/modules_tegra/dvb-usb-digitv.ko:/system/lib/modules/dvb-usb-digitv.ko \
vendor/mv/prebuilt/modules_tegra/dvb-usb-dtt200u.ko:/system/lib/modules/dvb-usb-dtt200u.ko \
vendor/mv/prebuilt/modules_tegra/dvb-usb-dtv5100.ko:/system/lib/modules/dvb-usb-dtv5100.ko \
vendor/mv/prebuilt/modules_tegra/dvb-usb-dw2102.ko:/system/lib/modules/dvb-usb-dw2102.ko \
vendor/mv/prebuilt/modules_tegra/dvb-usb-ec168.ko:/system/lib/modules/dvb-usb-ec168.ko \
vendor/mv/prebuilt/modules_tegra/dvb-usb-friio.ko:/system/lib/modules/dvb-usb-friio.ko \
vendor/mv/prebuilt/modules_tegra/dvb-usb-gl861.ko:/system/lib/modules/dvb-usb-gl861.ko \
vendor/mv/prebuilt/modules_tegra/dvb-usb-gp8psk.ko:/system/lib/modules/dvb-usb-gp8psk.ko \
vendor/mv/prebuilt/modules_tegra/dvb-usb.ko:/system/lib/modules/dvb-usb.ko \
vendor/mv/prebuilt/modules_tegra/dvb-usb-lmedm04.ko:/system/lib/modules/dvb-usb-lmedm04.ko \
vendor/mv/prebuilt/modules_tegra/dvb-usb-m920x.ko:/system/lib/modules/dvb-usb-m920x.ko \
vendor/mv/prebuilt/modules_tegra/dvb-usb-nova-t-usb2.ko:/system/lib/modules/dvb-usb-nova-t-usb2.ko \
vendor/mv/prebuilt/modules_tegra/dvb-usb-opera.ko:/system/lib/modules/dvb-usb-opera.ko \
vendor/mv/prebuilt/modules_tegra/dvb-usb-rtl2832.ko:/system/lib/modules/dvb-usb-rtl2832.ko \
vendor/mv/prebuilt/modules_tegra/dvb-usb-technisat-usb2.ko:/system/lib/modules/dvb-usb-technisat-usb2.ko \
vendor/mv/prebuilt/modules_tegra/dvb-usb-ttusb2.ko:/system/lib/modules/dvb-usb-ttusb2.ko \
vendor/mv/prebuilt/modules_tegra/dvb-usb-umt-010.ko:/system/lib/modules/dvb-usb-umt-010.ko \
vendor/mv/prebuilt/modules_tegra/dvb-usb-vp702x.ko:/system/lib/modules/dvb-usb-vp702x.ko \
vendor/mv/prebuilt/modules_tegra/dvb-usb-vp7045.ko:/system/lib/modules/dvb-usb-vp7045.ko \
vendor/mv/prebuilt/modules_tegra/earth-pt1.ko:/system/lib/modules/earth-pt1.ko \
vendor/mv/prebuilt/modules_tegra/easycap.ko:/system/lib/modules/easycap.ko \
vendor/mv/prebuilt/modules_tegra/ec100.ko:/system/lib/modules/ec100.ko \
vendor/mv/prebuilt/modules_tegra/eeprom_93cx6.ko:/system/lib/modules/eeprom_93cx6.ko \
vendor/mv/prebuilt/modules_tegra/em28xx.ko:/system/lib/modules/em28xx.ko \
vendor/mv/prebuilt/modules_tegra/hopper.ko:/system/lib/modules/hopper.ko \
vendor/mv/prebuilt/modules_tegra/i2c-algo-bit.ko:/system/lib/modules/i2c-algo-bit.ko \
vendor/mv/prebuilt/modules_tegra/ir-jvc-decoder.ko:/system/lib/modules/ir-jvc-decoder.ko \
vendor/mv/prebuilt/modules_tegra/ir-kbd-i2c.ko:/system/lib/modules/ir-kbd-i2c.ko \
vendor/mv/prebuilt/modules_tegra/ir-lirc-codec.ko:/system/lib/modules/ir-lirc-codec.ko \
vendor/mv/prebuilt/modules_tegra/ir-mce_kbd-decoder.ko:/system/lib/modules/ir-mce_kbd-decoder.ko \
vendor/mv/prebuilt/modules_tegra/ir-nec-decoder.ko:/system/lib/modules/ir-nec-decoder.ko \
vendor/mv/prebuilt/modules_tegra/ir-rc5-decoder.ko:/system/lib/modules/ir-rc5-decoder.ko \
vendor/mv/prebuilt/modules_tegra/ir-rc5-sz-decoder.ko:/system/lib/modules/ir-rc5-sz-decoder.ko \
vendor/mv/prebuilt/modules_tegra/ir-rc6-decoder.ko:/system/lib/modules/ir-rc6-decoder.ko \
vendor/mv/prebuilt/modules_tegra/ir-sony-decoder.ko:/system/lib/modules/ir-sony-decoder.ko \
vendor/mv/prebuilt/modules_tegra/isl6405.ko:/system/lib/modules/isl6405.ko \
vendor/mv/prebuilt/modules_tegra/isl6421.ko:/system/lib/modules/isl6421.ko \
vendor/mv/prebuilt/modules_tegra/isl6423.ko:/system/lib/modules/isl6423.ko \
vendor/mv/prebuilt/modules_tegra/itd1000.ko:/system/lib/modules/itd1000.ko \
vendor/mv/prebuilt/modules_tegra/ix2505v.ko:/system/lib/modules/ix2505v.ko \
vendor/mv/prebuilt/modules_tegra/joydev.ko:/system/lib/modules/joydev.ko \
vendor/mv/prebuilt/modules_tegra/keucr.ko:/system/lib/modules/keucr.ko \
vendor/mv/prebuilt/modules_tegra/l64781.ko:/system/lib/modules/l64781.ko \
vendor/mv/prebuilt/modules_tegra/lgdt3305.ko:/system/lib/modules/lgdt3305.ko \
vendor/mv/prebuilt/modules_tegra/lgdt330x.ko:/system/lib/modules/lgdt330x.ko \
vendor/mv/prebuilt/modules_tegra/lgs8gl5.ko:/system/lib/modules/lgs8gl5.ko \
vendor/mv/prebuilt/modules_tegra/lgs8gxx.ko:/system/lib/modules/lgs8gxx.ko \
vendor/mv/prebuilt/modules_tegra/lirc_dev.ko:/system/lib/modules/lirc_dev.ko \
vendor/mv/prebuilt/modules_tegra/lnbp21.ko:/system/lib/modules/lnbp21.ko \
vendor/mv/prebuilt/modules_tegra/mac80211.ko:/system/lib/modules/mac80211.ko \
vendor/mv/prebuilt/modules_tegra/mantis_core.ko:/system/lib/modules/mantis_core.ko \
vendor/mv/prebuilt/modules_tegra/mantis.ko:/system/lib/modules/mantis.ko \
vendor/mv/prebuilt/modules_tegra/max2165.ko:/system/lib/modules/max2165.ko \
vendor/mv/prebuilt/modules_tegra/mb86a16.ko:/system/lib/modules/mb86a16.ko \
vendor/mv/prebuilt/modules_tegra/mb86a20s.ko:/system/lib/modules/mb86a20s.ko \
vendor/mv/prebuilt/modules_tegra/mc44s803.ko:/system/lib/modules/mc44s803.ko \
vendor/mv/prebuilt/modules_tegra/mousedev.ko:/system/lib/modules/mousedev.ko \
vendor/mv/prebuilt/modules_tegra/mt2060.ko:/system/lib/modules/mt2060.ko \
vendor/mv/prebuilt/modules_tegra/mt20xx.ko:/system/lib/modules/mt20xx.ko \
vendor/mv/prebuilt/modules_tegra/mt2131.ko:/system/lib/modules/mt2131.ko \
vendor/mv/prebuilt/modules_tegra/mt2266.ko:/system/lib/modules/mt2266.ko \
vendor/mv/prebuilt/modules_tegra/mt312.ko:/system/lib/modules/mt312.ko \
vendor/mv/prebuilt/modules_tegra/mt352.ko:/system/lib/modules/mt352.ko \
vendor/mv/prebuilt/modules_tegra/mxl5005s.ko:/system/lib/modules/mxl5005s.ko \
vendor/mv/prebuilt/modules_tegra/mxl5007t.ko:/system/lib/modules/mxl5007t.ko \
vendor/mv/prebuilt/modules_tegra/ngene.ko:/system/lib/modules/ngene.ko \
vendor/mv/prebuilt/modules_tegra/nxt200x.ko:/system/lib/modules/nxt200x.ko \
vendor/mv/prebuilt/modules_tegra/nxt6000.ko:/system/lib/modules/nxt6000.ko \
vendor/mv/prebuilt/modules_tegra/or51132.ko:/system/lib/modules/or51132.ko \
vendor/mv/prebuilt/modules_tegra/or51211.ko:/system/lib/modules/or51211.ko \
vendor/mv/prebuilt/modules_tegra/pluto2.ko:/system/lib/modules/pluto2.ko \
vendor/mv/prebuilt/modules_tegra/powermate.ko:/system/lib/modules/powermate.ko \
vendor/mv/prebuilt/modules_tegra/qt1010.ko:/system/lib/modules/qt1010.ko \
vendor/mv/prebuilt/modules_tegra/qv4l2-common.ko:/system/lib/modules/qv4l2-common.ko \
vendor/mv/prebuilt/modules_tegra/qvideobuf2-core.ko:/system/lib/modules/qvideobuf2-core.ko \
vendor/mv/prebuilt/modules_tegra/qvideobuf2-memops.ko:/system/lib/modules/qvideobuf2-memops.ko \
vendor/mv/prebuilt/modules_tegra/qvideobuf2-vmalloc.ko:/system/lib/modules/qvideobuf2-vmalloc.ko \
vendor/mv/prebuilt/modules_tegra/qvideodev.ko:/system/lib/modules/qvideodev.ko \
vendor/mv/prebuilt/modules_tegra/r8187se.ko:/system/lib/modules/r8187se.ko \
vendor/mv/prebuilt/modules_tegra/r8192e_pci.ko:/system/lib/modules/r8192e_pci.ko \
vendor/mv/prebuilt/modules_tegra/r8192u_usb.ko:/system/lib/modules/r8192u_usb.ko \
vendor/mv/prebuilt/modules_tegra/r8712u.ko:/system/lib/modules/r8712u.ko \
vendor/mv/prebuilt/modules_tegra/radio-i2c-si470x.ko:/system/lib/modules/radio-i2c-si470x.ko \
vendor/mv/prebuilt/modules_tegra/radio-maxiradio.ko:/system/lib/modules/radio-maxiradio.ko \
vendor/mv/prebuilt/modules_tegra/radio-mr800.ko:/system/lib/modules/radio-mr800.ko \
vendor/mv/prebuilt/modules_tegra/radio-si4713.ko:/system/lib/modules/radio-si4713.ko \
vendor/mv/prebuilt/modules_tegra/radio-tea5764.ko:/system/lib/modules/radio-tea5764.ko \
vendor/mv/prebuilt/modules_tegra/radio-usb-si470x.ko:/system/lib/modules/radio-usb-si470x.ko \
vendor/mv/prebuilt/modules_tegra/radio-wl1273.ko:/system/lib/modules/radio-wl1273.ko \
vendor/mv/prebuilt/modules_tegra/rc-adstech-dvb-t-pci.ko:/system/lib/modules/rc-adstech-dvb-t-pci.ko \
vendor/mv/prebuilt/modules_tegra/rc-alink-dtu-m.ko:/system/lib/modules/rc-alink-dtu-m.ko \
vendor/mv/prebuilt/modules_tegra/rc-anysee.ko:/system/lib/modules/rc-anysee.ko \
vendor/mv/prebuilt/modules_tegra/rc-apac-viewcomp.ko:/system/lib/modules/rc-apac-viewcomp.ko \
vendor/mv/prebuilt/modules_tegra/rc-asus-pc39.ko:/system/lib/modules/rc-asus-pc39.ko \
vendor/mv/prebuilt/modules_tegra/rc-ati-tv-wonder-hd-600.ko:/system/lib/modules/rc-ati-tv-wonder-hd-600.ko \
vendor/mv/prebuilt/modules_tegra/rc-avermedia-a16d.ko:/system/lib/modules/rc-avermedia-a16d.ko \
vendor/mv/prebuilt/modules_tegra/rc-avermedia-cardbus.ko:/system/lib/modules/rc-avermedia-cardbus.ko \
vendor/mv/prebuilt/modules_tegra/rc-avermedia-dvbt.ko:/system/lib/modules/rc-avermedia-dvbt.ko \
vendor/mv/prebuilt/modules_tegra/rc-avermedia.ko:/system/lib/modules/rc-avermedia.ko \
vendor/mv/prebuilt/modules_tegra/rc-avermedia-m135a.ko:/system/lib/modules/rc-avermedia-m135a.ko \
vendor/mv/prebuilt/modules_tegra/rc-avermedia-m733a-rm-k6.ko:/system/lib/modules/rc-avermedia-m733a-rm-k6.ko \
vendor/mv/prebuilt/modules_tegra/rc-avermedia-rm-ks.ko:/system/lib/modules/rc-avermedia-rm-ks.ko \
vendor/mv/prebuilt/modules_tegra/rc-avertv-303.ko:/system/lib/modules/rc-avertv-303.ko \
vendor/mv/prebuilt/modules_tegra/rc-azurewave-ad-tu700.ko:/system/lib/modules/rc-azurewave-ad-tu700.ko \
vendor/mv/prebuilt/modules_tegra/rc-behold-columbus.ko:/system/lib/modules/rc-behold-columbus.ko \
vendor/mv/prebuilt/modules_tegra/rc-behold.ko:/system/lib/modules/rc-behold.ko \
vendor/mv/prebuilt/modules_tegra/rc-budget-ci-old.ko:/system/lib/modules/rc-budget-ci-old.ko \
vendor/mv/prebuilt/modules_tegra/rc-cinergy-1400.ko:/system/lib/modules/rc-cinergy-1400.ko \
vendor/mv/prebuilt/modules_tegra/rc-cinergy.ko:/system/lib/modules/rc-cinergy.ko \
vendor/mv/prebuilt/modules_tegra/rc-core.ko:/system/lib/modules/rc-core.ko \
vendor/mv/prebuilt/modules_tegra/rc-dib0700-nec.ko:/system/lib/modules/rc-dib0700-nec.ko \
vendor/mv/prebuilt/modules_tegra/rc-dib0700-rc5.ko:/system/lib/modules/rc-dib0700-rc5.ko \
vendor/mv/prebuilt/modules_tegra/rc-digitalnow-tinytwin.ko:/system/lib/modules/rc-digitalnow-tinytwin.ko \
vendor/mv/prebuilt/modules_tegra/rc-digittrade.ko:/system/lib/modules/rc-digittrade.ko \
vendor/mv/prebuilt/modules_tegra/rc-dm1105-nec.ko:/system/lib/modules/rc-dm1105-nec.ko \
vendor/mv/prebuilt/modules_tegra/rc-dntv-live-dvb-t.ko:/system/lib/modules/rc-dntv-live-dvb-t.ko \
vendor/mv/prebuilt/modules_tegra/rc-dntv-live-dvbt-pro.ko:/system/lib/modules/rc-dntv-live-dvbt-pro.ko \
vendor/mv/prebuilt/modules_tegra/rc-em-terratec.ko:/system/lib/modules/rc-em-terratec.ko \
vendor/mv/prebuilt/modules_tegra/rc-encore-enltv2.ko:/system/lib/modules/rc-encore-enltv2.ko \
vendor/mv/prebuilt/modules_tegra/rc-encore-enltv-fm53.ko:/system/lib/modules/rc-encore-enltv-fm53.ko \
vendor/mv/prebuilt/modules_tegra/rc-encore-enltv.ko:/system/lib/modules/rc-encore-enltv.ko \
vendor/mv/prebuilt/modules_tegra/rc-evga-indtube.ko:/system/lib/modules/rc-evga-indtube.ko \
vendor/mv/prebuilt/modules_tegra/rc-eztv.ko:/system/lib/modules/rc-eztv.ko \
vendor/mv/prebuilt/modules_tegra/rc-flydvb.ko:/system/lib/modules/rc-flydvb.ko \
vendor/mv/prebuilt/modules_tegra/rc-flyvideo.ko:/system/lib/modules/rc-flyvideo.ko \
vendor/mv/prebuilt/modules_tegra/rc-fusionhdtv-mce.ko:/system/lib/modules/rc-fusionhdtv-mce.ko \
vendor/mv/prebuilt/modules_tegra/rc-gadmei-rm008z.ko:/system/lib/modules/rc-gadmei-rm008z.ko \
vendor/mv/prebuilt/modules_tegra/rc-genius-tvgo-a11mce.ko:/system/lib/modules/rc-genius-tvgo-a11mce.ko \
vendor/mv/prebuilt/modules_tegra/rc-gotview7135.ko:/system/lib/modules/rc-gotview7135.ko \
vendor/mv/prebuilt/modules_tegra/rc-hauppauge.ko:/system/lib/modules/rc-hauppauge.ko \
vendor/mv/prebuilt/modules_tegra/rc-imon-mce.ko:/system/lib/modules/rc-imon-mce.ko \
vendor/mv/prebuilt/modules_tegra/rc-imon-pad.ko:/system/lib/modules/rc-imon-pad.ko \
vendor/mv/prebuilt/modules_tegra/rc-iodata-bctv7e.ko:/system/lib/modules/rc-iodata-bctv7e.ko \
vendor/mv/prebuilt/modules_tegra/rc-kaiomy.ko:/system/lib/modules/rc-kaiomy.ko \
vendor/mv/prebuilt/modules_tegra/rc-kworld-315u.ko:/system/lib/modules/rc-kworld-315u.ko \
vendor/mv/prebuilt/modules_tegra/rc-kworld-plus-tv-analog.ko:/system/lib/modules/rc-kworld-plus-tv-analog.ko \
vendor/mv/prebuilt/modules_tegra/rc-leadtek-y04g0051.ko:/system/lib/modules/rc-leadtek-y04g0051.ko \
vendor/mv/prebuilt/modules_tegra/rc-lirc.ko:/system/lib/modules/rc-lirc.ko \
vendor/mv/prebuilt/modules_tegra/rc-lme2510.ko:/system/lib/modules/rc-lme2510.ko \
vendor/mv/prebuilt/modules_tegra/rc-manli.ko:/system/lib/modules/rc-manli.ko \
vendor/mv/prebuilt/modules_tegra/rc-msi-digivox-iii.ko:/system/lib/modules/rc-msi-digivox-iii.ko \
vendor/mv/prebuilt/modules_tegra/rc-msi-digivox-ii.ko:/system/lib/modules/rc-msi-digivox-ii.ko \
vendor/mv/prebuilt/modules_tegra/rc-msi-tvanywhere.ko:/system/lib/modules/rc-msi-tvanywhere.ko \
vendor/mv/prebuilt/modules_tegra/rc-msi-tvanywhere-plus.ko:/system/lib/modules/rc-msi-tvanywhere-plus.ko \
vendor/mv/prebuilt/modules_tegra/rc-nebula.ko:/system/lib/modules/rc-nebula.ko \
vendor/mv/prebuilt/modules_tegra/rc-nec-terratec-cinergy-xs.ko:/system/lib/modules/rc-nec-terratec-cinergy-xs.ko \
vendor/mv/prebuilt/modules_tegra/rc-norwood.ko:/system/lib/modules/rc-norwood.ko \
vendor/mv/prebuilt/modules_tegra/rc-npgtech.ko:/system/lib/modules/rc-npgtech.ko \
vendor/mv/prebuilt/modules_tegra/rc-pctv-sedna.ko:/system/lib/modules/rc-pctv-sedna.ko \
vendor/mv/prebuilt/modules_tegra/rc-pinnacle-color.ko:/system/lib/modules/rc-pinnacle-color.ko \
vendor/mv/prebuilt/modules_tegra/rc-pinnacle-grey.ko:/system/lib/modules/rc-pinnacle-grey.ko \
vendor/mv/prebuilt/modules_tegra/rc-pinnacle-pctv-hd.ko:/system/lib/modules/rc-pinnacle-pctv-hd.ko \
vendor/mv/prebuilt/modules_tegra/rc-pixelview-002t.ko:/system/lib/modules/rc-pixelview-002t.ko \
vendor/mv/prebuilt/modules_tegra/rc-pixelview.ko:/system/lib/modules/rc-pixelview.ko \
vendor/mv/prebuilt/modules_tegra/rc-pixelview-mk12.ko:/system/lib/modules/rc-pixelview-mk12.ko \
vendor/mv/prebuilt/modules_tegra/rc-pixelview-new.ko:/system/lib/modules/rc-pixelview-new.ko \
vendor/mv/prebuilt/modules_tegra/rc-powercolor-real-angel.ko:/system/lib/modules/rc-powercolor-real-angel.ko \
vendor/mv/prebuilt/modules_tegra/rc-proteus-2309.ko:/system/lib/modules/rc-proteus-2309.ko \
vendor/mv/prebuilt/modules_tegra/rc-purpletv.ko:/system/lib/modules/rc-purpletv.ko \
vendor/mv/prebuilt/modules_tegra/rc-pv951.ko:/system/lib/modules/rc-pv951.ko \
vendor/mv/prebuilt/modules_tegra/rc-rc6-mce.ko:/system/lib/modules/rc-rc6-mce.ko \
vendor/mv/prebuilt/modules_tegra/rc-real-audio-220-32-keys.ko:/system/lib/modules/rc-real-audio-220-32-keys.ko \
vendor/mv/prebuilt/modules_tegra/rc-streamzap.ko:/system/lib/modules/rc-streamzap.ko \
vendor/mv/prebuilt/modules_tegra/rc-tbs-nec.ko:/system/lib/modules/rc-tbs-nec.ko \
vendor/mv/prebuilt/modules_tegra/rc-technisat-usb2.ko:/system/lib/modules/rc-technisat-usb2.ko \
vendor/mv/prebuilt/modules_tegra/rc-terratec-cinergy-xs.ko:/system/lib/modules/rc-terratec-cinergy-xs.ko \
vendor/mv/prebuilt/modules_tegra/rc-terratec-slim-2.ko:/system/lib/modules/rc-terratec-slim-2.ko \
vendor/mv/prebuilt/modules_tegra/rc-terratec-slim.ko:/system/lib/modules/rc-terratec-slim.ko \
vendor/mv/prebuilt/modules_tegra/rc-tevii-nec.ko:/system/lib/modules/rc-tevii-nec.ko \
vendor/mv/prebuilt/modules_tegra/rc-tivo.ko:/system/lib/modules/rc-tivo.ko \
vendor/mv/prebuilt/modules_tegra/rc-total-media-in-hand.ko:/system/lib/modules/rc-total-media-in-hand.ko \
vendor/mv/prebuilt/modules_tegra/rc-trekstor.ko:/system/lib/modules/rc-trekstor.ko \
vendor/mv/prebuilt/modules_tegra/rc-tt-1500.ko:/system/lib/modules/rc-tt-1500.ko \
vendor/mv/prebuilt/modules_tegra/rc-twinhan1027.ko:/system/lib/modules/rc-twinhan1027.ko \
vendor/mv/prebuilt/modules_tegra/rc-videomate-m1f.ko:/system/lib/modules/rc-videomate-m1f.ko \
vendor/mv/prebuilt/modules_tegra/rc-videomate-s350.ko:/system/lib/modules/rc-videomate-s350.ko \
vendor/mv/prebuilt/modules_tegra/rc-videomate-tv-pvr.ko:/system/lib/modules/rc-videomate-tv-pvr.ko \
vendor/mv/prebuilt/modules_tegra/rc-winfast.ko:/system/lib/modules/rc-winfast.ko \
vendor/mv/prebuilt/modules_tegra/rc-winfast-usbii-deluxe.ko:/system/lib/modules/rc-winfast-usbii-deluxe.ko \
vendor/mv/prebuilt/modules_tegra/rt2800lib.ko:/system/lib/modules/rt2800lib.ko \
vendor/mv/prebuilt/modules_tegra/rt2800usb.ko:/system/lib/modules/rt2800usb.ko \
vendor/mv/prebuilt/modules_tegra/rt2x00lib.ko:/system/lib/modules/rt2x00lib.ko \
vendor/mv/prebuilt/modules_tegra/rt2x00usb.ko:/system/lib/modules/rt2x00usb.ko \
vendor/mv/prebuilt/modules_tegra/rt73usb.ko:/system/lib/modules/rt73usb.ko \
vendor/mv/prebuilt/modules_tegra/rtl8150.ko:/system/lib/modules/rtl8150.ko \
vendor/mv/prebuilt/modules_tegra/rtl8180.ko:/system/lib/modules/rtl8180.ko \
vendor/mv/prebuilt/modules_tegra/rtl8187.ko:/system/lib/modules/rtl8187.ko \
vendor/mv/prebuilt/modules_tegra/rtl8192c-common.ko:/system/lib/modules/rtl8192c-common.ko \
vendor/mv/prebuilt/modules_tegra/rtl8192ce.ko:/system/lib/modules/rtl8192ce.ko \
vendor/mv/prebuilt/modules_tegra/rtl8192cu.ko:/system/lib/modules/rtl8192cu.ko \
vendor/mv/prebuilt/modules_tegra/rtl8192de.ko:/system/lib/modules/rtl8192de.ko \
vendor/mv/prebuilt/modules_tegra/rtl8192se.ko:/system/lib/modules/rtl8192se.ko \
vendor/mv/prebuilt/modules_tegra/rtlwifi.ko:/system/lib/modules/rtlwifi.ko \
vendor/mv/prebuilt/modules_tegra/s5h1409.ko:/system/lib/modules/s5h1409.ko \
vendor/mv/prebuilt/modules_tegra/s5h1411.ko:/system/lib/modules/s5h1411.ko \
vendor/mv/prebuilt/modules_tegra/s5h1420.ko:/system/lib/modules/s5h1420.ko \
vendor/mv/prebuilt/modules_tegra/s5h1432.ko:/system/lib/modules/s5h1432.ko \
vendor/mv/prebuilt/modules_tegra/s921.ko:/system/lib/modules/s921.ko \
vendor/mv/prebuilt/modules_tegra/saa7115.ko:/system/lib/modules/saa7115.ko \
vendor/mv/prebuilt/modules_tegra/saa7706h.ko:/system/lib/modules/saa7706h.ko \
vendor/mv/prebuilt/modules_tegra/si21xx.ko:/system/lib/modules/si21xx.ko \
vendor/mv/prebuilt/modules_tegra/si4713-i2c.ko:/system/lib/modules/si4713-i2c.ko \
vendor/mv/prebuilt/modules_tegra/sierra.ko:/system/lib/modules/sierra.ko \
vendor/mv/prebuilt/modules_tegra/smi2021.ko:/system/lib/modules/smi2021.ko \
vendor/mv/prebuilt/modules_tegra/smsdvb.ko:/system/lib/modules/smsdvb.ko \
vendor/mv/prebuilt/modules_tegra/smsmdtv.ko:/system/lib/modules/smsmdtv.ko \
vendor/mv/prebuilt/modules_tegra/smssdio.ko:/system/lib/modules/smssdio.ko \
vendor/mv/prebuilt/modules_tegra/smsusb.ko:/system/lib/modules/smsusb.ko \
vendor/mv/prebuilt/modules_tegra/sp8870.ko:/system/lib/modules/sp8870.ko \
vendor/mv/prebuilt/modules_tegra/sp887x.ko:/system/lib/modules/sp887x.ko \
vendor/mv/prebuilt/modules_tegra/stb0899.ko:/system/lib/modules/stb0899.ko \
vendor/mv/prebuilt/modules_tegra/stb6000.ko:/system/lib/modules/stb6000.ko \
vendor/mv/prebuilt/modules_tegra/stb6100.ko:/system/lib/modules/stb6100.ko \
vendor/mv/prebuilt/modules_tegra/stk1160.ko:/system/lib/modules/stk1160.ko \
vendor/mv/prebuilt/modules_tegra/stv0288.ko:/system/lib/modules/stv0288.ko \
vendor/mv/prebuilt/modules_tegra/stv0297.ko:/system/lib/modules/stv0297.ko \
vendor/mv/prebuilt/modules_tegra/stv0299.ko:/system/lib/modules/stv0299.ko \
vendor/mv/prebuilt/modules_tegra/stv0367.ko:/system/lib/modules/stv0367.ko \
vendor/mv/prebuilt/modules_tegra/stv0900.ko:/system/lib/modules/stv0900.ko \
vendor/mv/prebuilt/modules_tegra/stv090x.ko:/system/lib/modules/stv090x.ko \
vendor/mv/prebuilt/modules_tegra/stv6110.ko:/system/lib/modules/stv6110.ko \
vendor/mv/prebuilt/modules_tegra/stv6110x.ko:/system/lib/modules/stv6110x.ko \
vendor/mv/prebuilt/modules_tegra/tda10021.ko:/system/lib/modules/tda10021.ko \
vendor/mv/prebuilt/modules_tegra/tda10023.ko:/system/lib/modules/tda10023.ko \
vendor/mv/prebuilt/modules_tegra/tda10048.ko:/system/lib/modules/tda10048.ko \
vendor/mv/prebuilt/modules_tegra/tda1004x.ko:/system/lib/modules/tda1004x.ko \
vendor/mv/prebuilt/modules_tegra/tda10086.ko:/system/lib/modules/tda10086.ko \
vendor/mv/prebuilt/modules_tegra/tda18212.ko:/system/lib/modules/tda18212.ko \
vendor/mv/prebuilt/modules_tegra/tda18218.ko:/system/lib/modules/tda18218.ko \
vendor/mv/prebuilt/modules_tegra/tda18271c2dd.ko:/system/lib/modules/tda18271c2dd.ko \
vendor/mv/prebuilt/modules_tegra/tda18271.ko:/system/lib/modules/tda18271.ko \
vendor/mv/prebuilt/modules_tegra/tda665x.ko:/system/lib/modules/tda665x.ko \
vendor/mv/prebuilt/modules_tegra/tda8083.ko:/system/lib/modules/tda8083.ko \
vendor/mv/prebuilt/modules_tegra/tda8261.ko:/system/lib/modules/tda8261.ko \
vendor/mv/prebuilt/modules_tegra/tda826x.ko:/system/lib/modules/tda826x.ko \
vendor/mv/prebuilt/modules_tegra/tda827x.ko:/system/lib/modules/tda827x.ko \
vendor/mv/prebuilt/modules_tegra/tda8290.ko:/system/lib/modules/tda8290.ko \
vendor/mv/prebuilt/modules_tegra/tda9887.ko:/system/lib/modules/tda9887.ko \
vendor/mv/prebuilt/modules_tegra/tea5761.ko:/system/lib/modules/tea5761.ko \
vendor/mv/prebuilt/modules_tegra/tea5767.ko:/system/lib/modules/tea5767.ko \
vendor/mv/prebuilt/modules_tegra/tef6862.ko:/system/lib/modules/tef6862.ko \
vendor/mv/prebuilt/modules_tegra/ttusbdecfe.ko:/system/lib/modules/ttusbdecfe.ko \
vendor/mv/prebuilt/modules_tegra/ttusb_dec.ko:/system/lib/modules/ttusb_dec.ko \
vendor/mv/prebuilt/modules_tegra/tua6100.ko:/system/lib/modules/tua6100.ko \
vendor/mv/prebuilt/modules_tegra/tuner-simple.ko:/system/lib/modules/tuner-simple.ko \
vendor/mv/prebuilt/modules_tegra/tuner-types.ko:/system/lib/modules/tuner-types.ko \
vendor/mv/prebuilt/modules_tegra/tuner-xc2028.ko:/system/lib/modules/tuner-xc2028.ko \
vendor/mv/prebuilt/modules_tegra/tveeprom.ko:/system/lib/modules/tveeprom.ko \
vendor/mv/prebuilt/modules_tegra/usbtv.ko:/system/lib/modules/usbtv.ko \
vendor/mv/prebuilt/modules_tegra/ves1820.ko:/system/lib/modules/ves1820.ko \
vendor/mv/prebuilt/modules_tegra/ves1x93.ko:/system/lib/modules/ves1x93.ko \
vendor/mv/prebuilt/modules_tegra/vt6655_stage.ko:/system/lib/modules/vt6655_stage.ko \
vendor/mv/prebuilt/modules_tegra/vt6656_stage.ko:/system/lib/modules/vt6656_stage.ko \
vendor/mv/prebuilt/modules_tegra/wl1273-core.ko:/system/lib/modules/wl1273-core.ko \
vendor/mv/prebuilt/modules_tegra/xc4000.ko:/system/lib/modules/xc4000.ko \
vendor/mv/prebuilt/modules_tegra/xc5000.ko:/system/lib/modules/xc5000.ko \
vendor/mv/prebuilt/modules_tegra/zl10036.ko:/system/lib/modules/zl10036.ko \
vendor/mv/prebuilt/modules_tegra/zl10039.ko:/system/lib/modules/zl10039.ko \
vendor/mv/prebuilt/modules_tegra/zl10353.ko:/system/lib/modules/zl10353.ko
