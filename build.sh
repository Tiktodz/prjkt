#!/bin/bash

cyan='\033[0;36m'
blue='\033[0;34m'
nocol='\033[0m'

#set -e                                               

clear

export TZ=Asia/Jakarta

crave clone destroy -y /crave-devspaces/vos

crave clone create --projectID 35 /crave-devspaces/vos

cd /crave-devspaces/vos

echo -e "$cyan***************************************"
echo -e "       BUILDING ROM with Bomb ass command   "
echo -e "********************************************"

rm -rf .repo/local_manifests; \
repo init -u https://github.com/VoltageOS/manifest.git -b 16.2 --git-lfs; \
git clone --depth=1 https://github.com/Tiktodz/local_manifest -b vos .repo/local_manifests; \
/opt/crave/resync.sh; \
. build/envsetup.sh; \
export TZ=Asia/Jakarta; \
brunch X00TD
