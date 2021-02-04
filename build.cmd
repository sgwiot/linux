 mv arch/arm/boot/dts/100ask_myir_imx6ull_mini.dts arch/arm/boot/dts/sgw.dts
 export ARCH=arm
 export CROSS_COMPILE=arm-none-eabi-
 make -j7 dtbs zImage
 make ccimx6ul_defconfig 
 make xconfig
 make -j7 dtbs zImage
 gvim arch/arm/boot/dts/sgw.dts 
 make modules -j7
sudo cp arch/arm/boot/dts/sgw.dtb arch/arm/boot/zImage /mnt/
sudo cp -r ../target-kernel/lib/modules/5.4.42-g4107092-dirty/ /mnt/
make zImage dtbs INSTALL_MOD_PATH=../target-kernel modules_install
sudo cp arch/arm/boot/dts/imx6ul-ccimx6ulsbcpro.dtb /mnt/pro.dtb
<<<<<<< HEAD
sudo mount AndesIDE.local:/home/telink/tftpboot Test
=======
>>>>>>> Coding/master
make modules -j7; mkdir -p  ../target-kernel-54; make zImage dtbs INSTALL_MOD_PATH=../target-kernel-54 modules_install -j7 
make modules -j7; mkdir -p  ../target-kernel-54; make zImage dtbs INSTALL_MOD_PATH=../target-kernel-54 modules_install -j7 
