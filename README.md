This is the local manifest and instructions for building LineageOS 13 (or AOSP ROMS) for Sony Xperia J (jlo) released in 2012

The devices are based on the MSM7627a SoC (codenamed Tamsui)

Follow this guide up to "Initialize the LineageOS source repository" step (don't execute this step).

https://wiki.lineageos.org/devices/yuga/build

1) Enter the following to initialize the repository:
```
cd ~/android/lineage/
repo init -u git://github.com/LineageOS/android.git -b cm-13.0
```

2) Get the local manifest
```
mkdir -p ~/android/lineage/.repo/local_manifests
curl https://raw.githubusercontent.com/soulpower11/local_manifest/master-new/tamsui.xml > ~/android/lineage/.repo/local_manifests/tamsui.xml
```

3) repo sync (again) to download the additional repositories
```
repo sync -j8 --no-clone-bundle
```

4) Download and apply the patches file containing patches not in the source
```
curl https://raw.githubusercontent.com/TamsuiCM11/local_manifest/master/patches.sh > ~/android/lineage/patches.sh
./patches.sh
```

5) Start the build process for the device you own
*Note: this takes a long time*
```
. build/envsetup.sh
```
  i) If you want to build for Xperia J (jlo)
```
  breakfast LineageOS_jlo-userdebug
  brunch LineageOS_jlo-userdebug
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
