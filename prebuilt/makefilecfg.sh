#!bin/sh
echo "PRODUCT_COPY_FILES += \\"
for file in $(ls -1)
do
echo "    device/Lenovo/p700i/prebuilt/PowerVR/$file:/vendor/lib/$file \\";
done
