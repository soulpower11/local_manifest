This is the local manifest and instructions for building CyanogenMod 11 (or AOSP ROMS) for Sony Tipo (tapioca), Miro (mesona), J (jlo) and E (nanhu) released in 2012

The devices are based on the MSM7627a SoC (codenamed Tamsui)

Please setup your build enviroment as instructed on the link below, only follow up to the "Get Prebuilt Apps" stage, after which you can follow instructions mentioned here.

http://wiki.cyanogenmod.org/w/Build_for_yuga

1) After getting the prebuilt apps move back to root cyanogenmod dir
```
cd ~/android/system
```

2) Get the local manifest
```
mkdir -p ~/android/system/.repo/local_manifests
curl https://raw.github.com/TamsuiCM11/local_manifests/cm-11.0/tamsui.xml > ~/android/system/.repo/local_manifests/tamsui.xml
```

3) repo sync (again) to download the additional repositories
```
repo sync -j8 --no-clone-bundle
```

4) Download and apply the patches file containing patches not in the source
```
curl https://raw.github.com/TamsuiCM11/local_manifests/cm-11.0/patches.sh > ~/android/system/patches.sh
./patches.sh
```

5) Start the build process for the device you own
*Note: this takes a long time*
```
. build/envsetup.sh
```
  i) If you want to build for Xperia E (nanhu)
```
  breakfast cm_nanhu_ds-userdebug
  brunch cm_nanhu_ds-userdebug
```
  ii) If you want to build for Xperia J (jlo)
```
  breakfast cm_jlo-userdebug
  brunch cm_jlo-userdebug
```
  iii) If you want to build for Xperia Miro (mesona)
```
  breakfast cm_mesona-userdebug
  brunch cm_mesona-userdebug
```
  iv) If you want to build for Xperia Tipo (tapioca)
```
  breakfast cm_tapioca-userdebug
  brunch cm_tapioca-userdebug
```
  
Now go and grab a coffee or find something construtive to do for a couple to a few hours depending on your computer! 

To run a sequential build simply run the ```breakfast``` and ```brunch``` commands again for your device.

To remove all compiled files after running ```brunch```, simply run ```make clean```

To get the latest patches from cyanogenmod and TamsuiCM11 run ```repo sync```
note: you will also have to apply patches again after running ```repo sync``` by running ```./patches.sh```

The patches.sh file isn't updated automatically after running ```repo sync``` so you'll have to update it yourself by running step 4 again. 

-- joebonrichie

The site of TamsuiCM11 project https://sites.google.com/site/tamsuicm11/home

Before beta release we will ask xda moderators to delete all [Dev preview]-like threads of CM11
so we can make one thread for all devices. Just like FXP did.

I may take care of this to make it look nicely. Feel free to pm me on xda with suggestions etc about the site.

-- Lozohcum
