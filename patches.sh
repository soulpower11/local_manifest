#!/bin/bash

# Set CM11 path
if [ "${android}" = "" ]; then
        android=~/android/system
fi

# hwc: rotator is not supported on msm7x27a
cherries+=(69274)

# libstagefright: Add support for custom LPA buffer size in legacy LPAPlayer
cherries+=(69272)

# libstagefright: Enable meta mode for 7x27a video encoder
cherries+=(69271)

# libstagefright: refactor Legacy LPA makefile
cherries+=(69270)

# display: Cover NO_IOMMU for msm7x30/msm7x27a too
cherries+=(66211)

# media-caf: Fix building for msm7x27a
cherries+=(69273)

${android}/build/tools/repopick.py -b ${cherries[@]}

# Apply patches from tamsui-common
${android}/device/sony/tamsui-common/patches/apply.sh
