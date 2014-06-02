This is the local manifest and instructions for building CyanogenMod 11 (or AOSP ROMS) for Sony Tipo (tapioca), Miro (mesona), J (jlo) and E (nanhu) released in 2012

The devices are based on the MSM7627a SoC (codenamed Tamsui)

Check CarbonDev github for initial instructions;

1) After getting the prebuilt apps move back to root cyanogenmod dir
```
cd ~/android/system
```

2) Get the local manifest
```
mkdir -p ~/android/system/.repo/local_manifests
curl https://raw.github.com/TamsuiCM11/local_manifest/master/tamsui.xml > ~/android/system/.repo/local_manifests/tamsui.xml
```

3) repo sync (again) to download the additional repositories
```
repo sync -j8 --no-clone-bundle
```

4) Download and apply the patches file containing patches not in the source
```
curl https://raw.github.com/TamsuiCM11/local_manifest/master/patches.sh > ~/android/system/patches.sh
./patches.sh
```

5) Start the build process for the device you own
*Note: this takes a long time*
```
. build/envsetup.sh
```
  i) If you want to build for Xperia E (nanhu)
```
  breakfast carbon_nanhu-userdebug
  brunch carbon_nanhu-userdebug
```
  ii) If you want to build for Xperia E Dual (nanhu_ds)
```
  breakfast carbon_nanhu_ds-userdebug
  brunch carbon_nanhu_ds-userdebug
```
  
Now go and grab a coffee or find something construtive to do for a couple to a few hours depending on your computer! 

To run a sequential build simply run the ```breakfast``` and ```brunch``` commands again for your device.

To remove all compiled files after running ```brunch```, simply run ```make clean```

To get the latest patches from cyanogenmod and TamsuiCM11 run ```repo sync```
note: you will also have to apply patches again after running ```repo sync``` by running ```./patches.sh```

The patches.sh file isn't updated automatically after running ```repo sync``` so you'll have to update it yourself by running step 4 again. 

-- joebonrichie
