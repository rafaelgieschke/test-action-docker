#!/bin/bash

# taken from https://blog.mcbachmann.de/wp-content/uploads/2009/06/mergeide.chntpw
winXP="
cd \ControlSet001\Control\CriticalDeviceDatabase
nk primary_ide_channel
cd primary_ide_channel
nv 1 ClassGUID
ed ClassGUID
{4D36E96A-E325-11CE-BFC1-08002BE10318}
nv 1 Service
ed Service
atapi

cd \ControlSet001\Control\CriticalDeviceDatabase
nk secondary_ide_channel
cd secondary_ide_channel
nv 1 ClassGUID
ed ClassGUID
{4D36E96A-E325-11CE-BFC1-08002BE10318}
nv 1 Service
ed Service
atapi

cd \ControlSet001\Control\CriticalDeviceDatabase
nk *pnp0600
cd *pnp0600
nv 1 ClassGUID
ed ClassGUID
{4D36E96A-E325-11CE-BFC1-08002BE10318}
nv 1 Service
ed Service
atapi

cd \ControlSet001\Control\CriticalDeviceDatabase
nk *azt0502
cd *azt0502
nv 1 ClassGUID
ed ClassGUID
{4D36E96A-E325-11CE-BFC1-08002BE10318}
nv 1 Service
ed Service
atapi

cd \ControlSet001\Control\CriticalDeviceDatabase
nk gendisk
cd gendisk
nv 1 ClassGUID
ed ClassGUID
{4D36E967-E325-11CE-BFC1-08002BE10318}
nv 1 Service
ed Service
disk

cd \ControlSet001\Control\CriticalDeviceDatabase
nk pci#cc_0101
cd pci#cc_0101
nv 1 ClassGUID
ed ClassGUID
{4D36E96A-E325-11CE-BFC1-08002BE10318}
nv 1 Service
ed Service
pciide

cd \ControlSet001\Control\CriticalDeviceDatabase
nk pci#ven_0e11&dev_ae33
cd pci#ven_0e11&dev_ae33
nv 1 ClassGUID
ed ClassGUID
{4D36E96A-E325-11CE-BFC1-08002BE10318}
nv 1 Service
ed Service
pciide

cd \ControlSet001\Control\CriticalDeviceDatabase
nk pci#ven_1039&dev_0601
cd pci#ven_1039&dev_0601
nv 1 ClassGUID
ed ClassGUID
{4D36E96A-E325-11CE-BFC1-08002BE10318}
nv 1 Service
ed Service
pciide

cd \ControlSet001\Control\CriticalDeviceDatabase
nk pci#ven_1039&dev_5513
cd pci#ven_1039&dev_5513
nv 1 ClassGUID
ed ClassGUID
{4D36E96A-E325-11CE-BFC1-08002BE10318}
nv 1 Service
ed Service
pciide

cd \ControlSet001\Control\CriticalDeviceDatabase
nk pci#ven_1042&dev_1000
cd pci#ven_1042&dev_1000
nv 1 ClassGUID
ed ClassGUID
{4D36E96A-E325-11CE-BFC1-08002BE10318}
nv 1 Service
ed Service
pciide

cd \ControlSet001\Control\CriticalDeviceDatabase
nk pci#ven_105a&dev_4d33
cd pci#ven_105a&dev_4d33
nv 1 ClassGUID
ed ClassGUID
{4D36E96A-E325-11CE-BFC1-08002BE10318}
nv 1 Service
ed Service
pciide

cd \ControlSet001\Control\CriticalDeviceDatabase
nk pci#ven_1095&dev_0640
cd pci#ven_1095&dev_0640
nv 1 ClassGUID
ed ClassGUID
{4D36E96A-E325-11CE-BFC1-08002BE10318}
nv 1 Service
ed Service
pciide

cd \ControlSet001\Control\CriticalDeviceDatabase
nk pci#ven_1095&dev_0646
cd pci#ven_1095&dev_0646
nv 1 ClassGUID
ed ClassGUID
{4D36E96A-E325-11CE-BFC1-08002BE10318}
nv 1 Service
ed Service
pciide

cd \ControlSet001\Control\CriticalDeviceDatabase
nk pci#ven_1095&dev_0646&REV_05
cd pci#ven_1095&dev_0646&REV_05
nv 1 ClassGUID
ed ClassGUID
{4D36E96A-E325-11CE-BFC1-08002BE10318}
nv 1 Service
ed Service
pciide

cd \ControlSet001\Control\CriticalDeviceDatabase
nk pci#ven_1095&dev_0646&REV_07
cd pci#ven_1095&dev_0646&REV_07
nv 1 ClassGUID
ed ClassGUID
{4D36E96A-E325-11CE-BFC1-08002BE10318}
nv 1 Service
ed Service
pciide

cd \ControlSet001\Control\CriticalDeviceDatabase
nk pci#ven_1095&dev_0648
cd pci#ven_1095&dev_0648
nv 1 ClassGUID
ed ClassGUID
{4D36E96A-E325-11CE-BFC1-08002BE10318}
nv 1 Service
ed Service
pciide

cd \ControlSet001\Control\CriticalDeviceDatabase
nk pci#ven_1095&dev_0649
cd pci#ven_1095&dev_0649
nv 1 ClassGUID
ed ClassGUID
{4D36E96A-E325-11CE-BFC1-08002BE10318}
nv 1 Service
ed Service
pciide

cd \ControlSet001\Control\CriticalDeviceDatabase
nk pci#ven_1097&dev_0038
cd pci#ven_1097&dev_0038
nv 1 ClassGUID
ed ClassGUID
{4D36E96A-E325-11CE-BFC1-08002BE10318}
nv 1 Service
ed Service
pciide

cd \ControlSet001\Control\CriticalDeviceDatabase
nk pci#ven_10ad&dev_0001
cd pci#ven_10ad&dev_0001
nv 1 ClassGUID
ed ClassGUID
{4D36E96A-E325-11CE-BFC1-08002BE10318}
nv 1 Service
ed Service
pciide

cd \ControlSet001\Control\CriticalDeviceDatabase
nk pci#ven_10ad&dev_0150
cd pci#ven_10ad&dev_0150
nv 1 ClassGUID
ed ClassGUID
{4D36E96A-E325-11CE-BFC1-08002BE10318}
nv 1 Service
ed Service
pciide

cd \ControlSet001\Control\CriticalDeviceDatabase
nk pci#ven_10b9&dev_5215
cd pci#ven_10b9&dev_5215
nv 1 ClassGUID
ed ClassGUID
{4D36E96A-E325-11CE-BFC1-08002BE10318}
nv 1 Service
ed Service
pciide

cd \ControlSet001\Control\CriticalDeviceDatabase
nk pci#ven_10b9&dev_5219
cd pci#ven_10b9&dev_5219
nv 1 ClassGUID
ed ClassGUID
{4D36E96A-E325-11CE-BFC1-08002BE10318}
nv 1 Service
ed Service
pciide

cd \ControlSet001\Control\CriticalDeviceDatabase
nk pci#ven_10b9&dev_5229
cd pci#ven_10b9&dev_5229
nv 1 ClassGUID
ed ClassGUID
{4D36E96A-E325-11CE-BFC1-08002BE10318}
nv 1 Service
ed Service
pciide

cd \ControlSet001\Control\CriticalDeviceDatabase
nk pci#ven_1106&dev_0571
cd pci#ven_1106&dev_0571
nv 1 Service
ed Service
pciide
nv 1 ClassGUID
ed ClassGUID
{4D36E96A-E325-11CE-BFC1-08002BE10318}

cd \ControlSet001\Control\CriticalDeviceDatabase
nk pci#ven_8086&dev_1222
cd pci#ven_8086&dev_1222
nv 1 ClassGUID
ed ClassGUID
{4D36E96A-E325-11CE-BFC1-08002BE10318}
nv 1 Service
ed Service
intelide

cd \ControlSet001\Control\CriticalDeviceDatabase
nk pci#ven_8086&dev_1230
cd pci#ven_8086&dev_1230
nv 1 ClassGUID
ed ClassGUID
{4D36E96A-E325-11CE-BFC1-08002BE10318}
nv 1 Service
ed Service
intelide

cd \ControlSet001\Control\CriticalDeviceDatabase
nk pci#ven_8086&dev_2411
cd pci#ven_8086&dev_2411
nv 1 ClassGUID
ed ClassGUID
{4D36E96A-E325-11CE-BFC1-08002BE10318}
nv 1 Service
ed Service
intelide

cd \ControlSet001\Control\CriticalDeviceDatabase
nk pci#ven_8086&dev_2421
cd pci#ven_8086&dev_2421
nv 1 ClassGUID
ed ClassGUID
{4D36E96A-E325-11CE-BFC1-08002BE10318}
nv 1 Service
ed Service
intelide

cd \ControlSet001\Control\CriticalDeviceDatabase
nk pci#ven_8086&dev_7010
cd pci#ven_8086&dev_7010
nv 1 ClassGUID
ed ClassGUID
{4D36E96A-E325-11CE-BFC1-08002BE10318}
nv 1 Service
ed Service
intelide

cd \ControlSet001\Control\CriticalDeviceDatabase
nk pci#ven_8086&dev_7111
cd pci#ven_8086&dev_7111
nv 1 ClassGUID
ed ClassGUID
{4D36E96A-E325-11CE-BFC1-08002BE10318}
nv 1 Service
ed Service
intelide

cd \ControlSet001\Control\CriticalDeviceDatabase
nk pci#ven_8086&dev_7199
cd pci#ven_8086&dev_7199
nv 1 ClassGUID
ed ClassGUID
{4D36E96A-E325-11CE-BFC1-08002BE10318}
nv 1 Service
ed Service
intelide


cd \ControlSet001\Services
nk atapi
cd atapi
nv 4 ErrorControl
ed ErrorControl
1
nv 1 Group
ed Group
SCSI miniport
nv 4 Start
ed Start
0
nv 4 Tag
ed Tag
19
nv 4 Type
ed Type
1
nv 1 DisplayName
ed DisplayName
Standard IDE/ESDI Hard Disk Controller
nv 2 ImagePath
ed ImagePath
system32\DRIVERS\atapi.sys


cd \ControlSet001\Services
nk IntelIde
cd IntelIde
nv 4 ErrorControl
ed ErrorControl
1
nv 1 Group
ed Group
System Bus Extender
nv 4 Start
ed Start
0
nv 4 Tag
ed Tag
4
nv 4 Type
ed Type
1
nv 2 ImagePath
ed ImagePath
System32\DRIVERS\intelide.sys


cd \ControlSet001\Services
nk PCIIde
cd PCIIde
nv 4 ErrorControl
ed ErrorControl
1
nv 1 Group
ed Group
System Bus Extender
nv 4 Start
ed Start
0
nv 4 Tag
ed Tag
3
nv 4 Type
ed Type
1
nv 2 ImagePath
ed ImagePath
System32\DRIVERS\pciide.sys

q
y
"

# idea from https://blog.mcbachmann.de/linux/windows-bluescreen-0x0000007b-inaccessible_boot_device
dir=$1

# print usage
if [ $# -lt 1 ]; then 
    echo "usage: ./patch.sh path version"
    echo ""
    echo "path = path to mounted windows"
    exit
fi

# check if we need registry patch for win7 or winxp
mergeIDE=$winXP
winString="Windows XP"

echo "patching registry for $winString"

# system registry (winXP: /WINDOWS/system32/config/system; win7: /Windows/System32/config/SYSTEM)
echo "searching for system registry"
sysReg=`find $dir -type f -iwholename '*/windows/system32/config/system' | head -n1`
echo "found: $sysReg"

# backup old registry
echo "backup registry from $sysReg to ${sysReg}.bak"
cp "$sysReg" "${sysReg}.bak"


# cab driver are only important for winXP, in win7 the drivers already exists in Windows/System32/drivers

 # search cab dir
 echo "searching for cab drivers dir"
 cabDir=`find $dir -type d -iwholename '*/windows/driver cache*/i386' | head -n1`
 echo "found: $cabDir"

 # extract drivers from cabDir into this dir
 echo "searching for driversDir (i'll put the drivers there)"
 driversDir=`find $dir -type d -iwholename '*/windows/system32/drivers' | head -n1`
 echo "found: $driversDir"

 # extract drivers from various cab files
  if [ -n "$cabDir" ]; then
     echo "extract cab drivers"
     cabextract -d $driversDir -F atapi.sys "$cabDir/driver.cab" "$cabDir/sp2.cab" "$cabDir/sp3.cab"
     cabextract -d $driversDir -F intelide.sys "$cabDir/driver.cab" "$cabDir/sp2.cab" "$cabDir/sp3.cab"
     cabextract -d $driversDir -F pciide.sys "$cabDir/driver.cab" "$cabDir/sp2.cab" "$cabDir/sp3.cab"
     cabextract -d $driversDir -F pciidex.sys "$cabDir/driver.cab" "$cabDir/sp2.cab" "$cabDir/sp3.cab"
  fi

# retrieve ControlSet number
# command to export Select-key
getControlSet="
ek /tmp/current System Select
q"

# save command to tmp file in order to import it
printf '%s\' "$getControlSet" > /tmp/getControlSet

chntpw -e "$sysReg" < /tmp/getControlSet
rm /tmp/getControlSet

# get ControlSet number
# cut -f2 -d ":" = "Current"=dword:00000001 to 00000001
# sed s/
// = remove CRLF
count=`grep -i current /tmp/current | cut -f2 -d ":" | sed s/
//`
# get last 3 digit + build String 
controlSet="ControlSet${count: -3}"
echo "set $controlSet as CurrentControlSet"
rm /tmp/current

# patch registry
echo "patch registry ..."

# save command to tmp file in order to import it
printf '%s\' "$mergeIDE" > /tmp/mergeIDEscript

# change ControlSet001 based on retrieved ControlSet number
sed -i "s/ControlSet001/${controlSet}/" /tmp/mergeIDEscript

# patch registry
# chntpw can't import .reg files => mergeIDEscript string necessary 
chntpw -e "$sysReg" < /tmp/mergeIDEscript 

rm /tmp/mergeIDEscript
echo "... done"
