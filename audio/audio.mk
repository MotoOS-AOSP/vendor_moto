# Copyright (C) 2020 The Proton AOSP Project
# Copyright (C) 2024 MotoOS AOSP Project
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

# 2021 motorola sounds (CC-BY 4.0)
LOCAL_PATH := vendor/moto/audio

# Copiar archivos de alarms
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/alarms/Helium.ogg:$(TARGET_COPY_OUT_PRODUCT)/media/audio/alarms/Helium.ogg \

# Copiar archivos de notifications
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/notifications/Clear.ogg:$(TARGET_COPY_OUT_PRODUCT)/media/audio/notifications/Clear.ogg \

# Copiar archivos de ringtones
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/ringtones/Hello.ogg:$(TARGET_COPY_OUT_PRODUCT)/media/audio/ringtones/Hello.ogg \

# Copiar archivos de ui
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/ui/Dock.ogg:$(TARGET_COPY_OUT_PRODUCT)/media/audio/ui/Dock.ogg \
    $(LOCAL_PATH)/ui/Effect_Tick.ogg:$(TARGET_COPY_OUT_PRODUCT)/media/audio/ui/Effect_Tick.ogg \
    $(LOCAL_PATH)/ui/KeypressDelete.ogg:$(TARGET_COPY_OUT_PRODUCT)/media/audio/ui/KeypressDelete.ogg \
    $(LOCAL_PATH)/ui/KeypressInvalid.ogg:$(TARGET_COPY_OUT_PRODUCT)/media/audio/ui/KeypressInvalid.ogg \
    $(LOCAL_PATH)/ui/KeypressReturn.ogg:$(TARGET_COPY_OUT_PRODUCT)/media/audio/ui/KeypressReturn.ogg \
    $(LOCAL_PATH)/ui/KeypressSpacebar.ogg:$(TARGET_COPY_OUT_PRODUCT)/media/audio/ui/KeypressSpacebar.ogg \
    $(LOCAL_PATH)/ui/KeypressStandard.ogg:$(TARGET_COPY_OUT_PRODUCT)/media/audio/ui/KeypressStandard.ogg \
    $(LOCAL_PATH)/ui/Lock.ogg:$(TARGET_COPY_OUT_PRODUCT)/media/audio/ui/Lock.ogg \
    $(LOCAL_PATH)/ui/LowBattery.ogg:$(TARGET_COPY_OUT_PRODUCT)/media/audio/ui/LowBattery.ogg \
    $(LOCAL_PATH)/ui/Trusted.ogg:$(TARGET_COPY_OUT_PRODUCT)/media/audio/ui/Trusted.ogg \
    $(LOCAL_PATH)/ui/Undock.ogg:$(TARGET_COPY_OUT_PRODUCT)/media/audio/ui/Undock.ogg \
    $(LOCAL_PATH)/ui/Unlock.ogg:$(TARGET_COPY_OUT_PRODUCT)/media/audio/ui/Unlock.ogg \
    $(LOCAL_PATH)/ui/VideoRecord.ogg:$(TARGET_COPY_OUT_PRODUCT)/media/audio/ui/VideoRecord.ogg \
    $(LOCAL_PATH)/ui/VideoStop.ogg:$(TARGET_COPY_OUT_PRODUCT)/media/audio/ui/VideoStop.ogg \
    $(LOCAL_PATH)/ui/WirelessChargingStarted.ogg:$(TARGET_COPY_OUT_PRODUCT)/media/audio/ui/WirelessChargingStarted.ogg \
    $(LOCAL_PATH)/ui/camera_click.ogg:$(TARGET_COPY_OUT_PRODUCT)/media/audio/ui/camera_click.ogg \
    $(LOCAL_PATH)/ui/camera_focus.ogg:$(TARGET_COPY_OUT_PRODUCT)/media/audio/ui/camera_focus.ogg



# Sobrescribir las propiedades del sistema para los sonidos de UI, teclado y otros sonidos del sistema
PRODUCT_PROPERTY_OVERRIDES += \
    ro.config.notification_sound=Clear.ogg \
    ro.config.ringtone=Hello.ogg \
    ro.config.alarm_alert=Helium.ogg \
    ro.config.lock_sound=Lock.ogg \
    ro.config.unlock_sound=Unlock.ogg \
    ro.config.screenshot_sound=camera_click.ogg \
    ro.config.low_battery_sound=LowBattery.ogg \
    ro.config.chargerconnected_sound=WirelessChargingStarted.ogg \
    ro.config.chargerdisconnected_sound=Undock.ogg \
    ro.camera.sound.focus=camera_focus.ogg \
    ro.camera.sound.videorecord=VideoRecord.ogg \
    ro.camera.sound.videostop=VideoStop.ogg \
    ro.config.keypress_sound=KeypressStandard.ogg \
    ro.config.keypress_delete_sound=KeypressDelete.ogg \
    ro.config.keypress_spacebar_sound=KeypressSpacebar.ogg \
    ro.config.keypress_return_sound=KeypressReturn.ogg \
    ro.config.keypress_invalid_sound=KeypressInvalid.ogg \
    ro.config.vibrate_on_unlock=true
