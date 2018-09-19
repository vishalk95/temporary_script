####### bionic #######
cd bionic
git apply -v ../device/leeco/x3/patches/bionic/*
cd ..
###### frameworks_av #####
cd frameworks/av/
git remote add vk https://github.com/vishalk95/android_frameworks_av_mtk
git fetch vk
git cherry-pick 1319c24f5965dd0fbe334a7a9dda52adda90aba5 99eed8b751fc3e603685afb08d0b2adf1b6e4f38
cd ../..
########## frameworks/opt/tele* ##########
cd frameworks/opt/tele*
git remote add vk https://github.com/vishalk95/android_frameworks_opt_telephony_mtk
git fetch vk
git cherry-pick 0dad14f3125859db6bcbdb6c17aa03c0088213ad
########## system/core ##############
cd system/core
git remote add vk https://github.com/vishalk95/android_system_core_mtk
git fetch vk
git cherry-pick 60d73219c4eb9f1e9ef3f8b3e4f61f711afabc65^..eaabe2d2946c3df571a1de57405d8019b09225b8
git apply -v ../../device/leeco/x3/patches/system/core/0001-restore-support-for-early_suspend.patch
cd ../..
########### hardware/interfaces ###########
cd hardware/interfaces
git remote add vk https://github.com/vishalk95/android_hardware_interfaces_mtk
git fetch vk
git cherry-pick 6591a484c7fce232694b5706f5a81f3a2d488f2c df2f405edef9a67dc36066f5ecd10a9ba6349087
cd ../..
