#
# Copyright (C) 2023 The Android Open-Source Project
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
#

# Adjust the TARGET_SCREEN_DENSITY based on the target name
ifeq (,$(filter tangorpro_ui_portrait_car tangorpro_car_cw, $(TARGET_PRODUCT)))
    TARGET_SCREEN_DENSITY := 280
else
    TARGET_SCREEN_DENSITY := 150
endif

# Wifi interface combination - {1 STA + 1 P2P} or {1 STA + 1 NAN} or {1 STA + 1 AP}
WIFI_HAL_INTERFACE_COMBINATIONS := {{{STA}, 1}, {{P2P, NAN, AP}, 1}}
BOARD_SEPOLICY_DIRS += device/google_car/tangorpro_car/sepolicy
BOARD_KERNEL_CMDLINE += androidboot.selinux=permissive
SELINUX_IGNORE_NEVERALLOWS := true
SYSTEM_EXT_PRIVATE_SEPOLICY_DIRS += device/google_car/tangorpro_car/sepolicy_system_ext
