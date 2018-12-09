echo "Cloning Device Tree"
git clone https://github.com/vishalk95/android_device_leeco_x3 -b los-16.0 device/leeco/x3
echo "Cloned Device Tree Successfully"
echo "Cloning vendor Tree"
git clone https://github.com/vishalk95/proprietary_vendor_leeco -b android-9.0 vendor/leeco
echo "Cloned vendor Tree Successfully"
echo "Cloning kernel Tree"
git clone https://github.com/vishalk95/vishalk17s-android_kernel_leeco_x3 -b pietemp kernel/leeco/x3
echo "Cloned kernel Tree Successfully"
