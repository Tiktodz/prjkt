#!/bin/bash

cyan='\033[0;36m'
blue='\033[0;34m'
nocol='\033[0m'

#set -e

clear

export TZ=Asia/Jakarta

#crave clone destroy -y /crave-devspaces/tytyd

#crave clone create --projectID 93 /crave-devspaces/tytyd

#cd /crave-devspaces/tytyd

echo -e "$cyan***************************************"
echo -e "       BUILDING ROM with Bomb ass command   "
echo -e "********************************************"

rm -rf .repo/local_manifests out/soong out/host/linux-x86
repo init -u https://github.com/LineageOS/android.git -b lineage-23.2 --git-lfs
git clone --depth=1 https://github.com/Tiktodz/local_manifest -b custom .repo/local_manifests
/opt/crave/resync.sh
. build/envsetup.sh
lunch lineage_X00TD-bp4a-userdebug
mka bacon
