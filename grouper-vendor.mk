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
    vendor/mv/prebuilt/bin/sysinit:system/bin/sysinit

# userinit support
PRODUCT_COPY_FILES += \
    vendor/mv/prebuilt/etc/init.d/90userinit:system/etc/init.d/90userinit

# Gesture Input AOSP Keyboard
PRODUCT_COPY_FILES += \
    vendor/mv/prebuilt/lib/libjni_unbundled_latinimegoogle.so:system/lib/libjni_unbundled_latinimegoogle.so

# update-hosts skript & prebuilt-rm
PRODUCT_COPY_FILES += \
    vendor/mv/prebuilt/bin/update-hosts.sh:system/xbin/update-hosts \
    vendor/mv/prebuilt/bin/prebuilt-rm.sh:system/xbin/prebuilt-rm \
    vendor/mv/prebuilt/bin/ksmstat.sh:system/xbin/ksmstat \
    vendor/mv/prebuilt/bin/mem.sh:system/xbin/mem


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
	Launcher2 \
	LockClock \
	Terminal \
	totalcmd \
	quickpic_4.2 \
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
