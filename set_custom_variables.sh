cd ~/
echo 'export KBUILD_BUILD_USER=vishalk17' >> ~/.bashrc
echo 'export KBUILD_BUILD_HOST=vishal-vm' >> ~/.bashrc
echo "set out User and Host"
echo "set ccache"
echo 'export USE_CCACHE=1' >> ~/.bashrc
ccache -M 60G
echo "set out ccache"
echo "Configure Jack to allocate a sufficient amount of memory"
echo 'export ANDROID_JACK_VM_ARGS="-Dfile.encoding=UTF-8 -XX:+TieredCompilation -Xmx6G"' >> ~/.bashrc
echo "Configured Jack"
echo "Setout Custom Variables Successfully"
