# comment required things only, default = pie 
#pie start
device_branch=los16
vendor_branch=android-9.x
kernel_branch=pietemp
#pie end
#
# oreo start
#device_branch=lineage-15.1-oreo
#vendor_branch=android-8.1.x
#kernel_branch=android-8.1.x
#oreo end
#
echo "Cloning Device Tree"
git clone https://github.com/vishalk95/android_device_leeco_x3 -b ${device_branch} device/leeco/x3
echo "Cloned Device Tree Successfully"
echo "Cloning vendor Tree"
git clone https://github.com/vishalk95/proprietary_vendor_leeco -b ${vendor_branch} vendor/leeco
echo "Cloned vendor Tree Successfully"
echo "Cloning kernel Tree"
git clone https://github.com/vishalk95/vishalk17s-android_kernel_leeco_x3 -b ${kernel_branch} kernel/leeco/x3
echo "Cloned kernel Tree Successfully"
