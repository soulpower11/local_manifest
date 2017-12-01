#!/bin/bash

# Set CM11 path
if [ "${android}" = "" ]; then
        android=~/android/lineage
fi

${android}/build/tools/repopick.py -b ${cherries[@]}

# Apply patches from tamsui-common
${android}/device/sony/tamsui-common/patches/apply.sh
