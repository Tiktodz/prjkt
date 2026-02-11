#!/bin/bash

cyan='\033[0;36m'
blue='\033[0;34m'
nocol='\033[0m'

#set -e                                               

clear

export TZ=Asia/Jakarta

#crave clone destroy -y /crave-devspaces/los

#crave clone create --projectID 35 /crave-devspaces/crd

#cd /crave-devspaces/crd

echo -e "$cyan***************************************"
echo -e "       BUILDING ROM with Bomb ass command   "
echo -e "********************************************"

rm -rf .repo/local_manifests
repo init -u https://github.com/crdroidandroid/android.git -b 16.0 --git-lfs --no-clone-bundle
git clone --depth=1 https://github.com/Tiktodz/local_manifest -b crd .repo/local_manifests
/opt/crave/resync.sh
. build/envsetup.sh
#rm -rf vendor/lineage-priv/keys
#mkdir -p vendor/lineage-priv/keys
#cp -R lineage/scripts/lineage-priv-template/* vendor/lineage-priv/keys/
#cd vendor/lineage-priv/keys
#./keys.sh
#cd -
#cd kernel/asus/sdm660
#curl -LSs "https://raw.githubusercontent.com/rsuntk/KernelSU/main/kernel/setup.sh" | bash -s main
#cd -
brunch X00TD


###myhanaqueen:*###
