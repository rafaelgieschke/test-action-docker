#!/bin/bash

# taken from https://blog.mcbachmann.de/wp-content/uploads/2009/06/mergeide.chntpw
win7+="
cd \ControlSet001\Control\CriticalDeviceDatabase
nk Primary_IDE_Channel 
cd Primary_IDE_Channel 
nv 1 ClassGUID
ed ClassGUID
{4D36E96A-E325-11CE-BFC1-08002BE10318}
nv 1 Service
ed Service
atapi

cd \ControlSet001\Control\CriticalDeviceDatabase
nk Secondary_IDE_Channel 
cd Secondary_IDE_Channel 
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
nk GenDisk 
cd GenDisk
nv 1 ClassGUID
ed ClassGUID
{4D36E967-E325-11CE-BFC1-08002BE10318}
nv 1 Service
ed Service
disk

cd \ControlSet001\Control\CriticalDeviceDatabase
nk PCI#CC_0101
cd PCI#CC_0101
nv 1 ClassGUID
ed ClassGUID
{4D36E96A-E325-11CE-BFC1-08002BE10318}
nv 1 Service
ed Service
pciide

cd \ControlSet001\Control\CriticalDeviceDatabase
nk PCI#VEN_0E11&DEV_AE33
cd PCI#VEN_0E11&DEV_AE33
nv 1 ClassGUID
ed ClassGUID
{4D36E96A-E325-11CE-BFC1-08002BE10318}
nv 1 Service
ed Service
pciide

cd \ControlSet001\Control\CriticalDeviceDatabase
nk PCI#VEN_1039&DEV_0601
cd PCI#VEN_1039&DEV_0601
nv 1 ClassGUID
ed ClassGUID
{4D36E96A-E325-11CE-BFC1-08002BE10318}
nv 1 Service
ed Service
pciide

cd \ControlSet001\Control\CriticalDeviceDatabase
nk PCI#VEN_1039&DEV_5513
cd PCI#VEN_1039&DEV_5513
nv 1 ClassGUID
ed ClassGUID
{4D36E96A-E325-11CE-BFC1-08002BE10318}
nv 1 Service
ed Service
pciide

cd \ControlSet001\Control\CriticalDeviceDatabase
nk PCI#VEN_1042&DEV_1000
cd PCI#VEN_1042&DEV_1000
nv 1 ClassGUID
ed ClassGUID
{4D36E96A-E325-11CE-BFC1-08002BE10318}
nv 1 Service
ed Service
pciide

cd \ControlSet001\Control\CriticalDeviceDatabase
nk PCI#VEN_105A&DEV_4D33
cd PCI#VEN_105A&DEV_4D33
nv 1 ClassGUID
ed ClassGUID
{4D36E96A-E325-11CE-BFC1-08002BE10318}
nv 1 Service
ed Service
pciide

cd \ControlSet001\Control\CriticalDeviceDatabase
nk PCI#VEN_1095&DEV_0640
cd PCI#VEN_1095&DEV_0640
nv 1 ClassGUID
ed ClassGUID
{4D36E96A-E325-11CE-BFC1-08002BE10318}
nv 1 Service
ed Service
pciide

cd \ControlSet001\Control\CriticalDeviceDatabase
nk PCI#VEN_1095&DEV_0646
cd PCI#VEN_1095&DEV_0646
nv 1 ClassGUID
ed ClassGUID
{4D36E96A-E325-11CE-BFC1-08002BE10318}
nv 1 Service
ed Service
pciide

cd \ControlSet001\Control\CriticalDeviceDatabase
nk PCI#VEN_1095&DEV_0646&REV_05
cd PCI#VEN_1095&DEV_0646&REV_05
nv 1 ClassGUID
ed ClassGUID
{4D36E96A-E325-11CE-BFC1-08002BE10318}
nv 1 Service
ed Service
pciide

cd \ControlSet001\Control\CriticalDeviceDatabase
nk PCI#VEN_1095&DEV_0646&REV_07
cd PCI#VEN_1095&DEV_0646&REV_07
nv 1 ClassGUID
ed ClassGUID
{4D36E96A-E325-11CE-BFC1-08002BE10318}
nv 1 Service
ed Service
pciide

cd \ControlSet001\Control\CriticalDeviceDatabase
nk PCI#VEN_1095&DEV_0648
cd PCI#VEN_1095&DEV_0648
nv 1 ClassGUID
ed ClassGUID
{4D36E96A-E325-11CE-BFC1-08002BE10318}
nv 1 Service
ed Service
pciide

cd \ControlSet001\Control\CriticalDeviceDatabase
nk PCI#VEN_1095&DEV_0649
cd PCI#VEN_1095&DEV_0649
nv 1 ClassGUID
ed ClassGUID
{4D36E96A-E325-11CE-BFC1-08002BE10318}
nv 1 Service
ed Service
pciide

cd \ControlSet001\Control\CriticalDeviceDatabase
nk PCI#VEN_1097&DEV_0038
cd PCI#VEN_1097&DEV_0038
nv 1 ClassGUID
ed ClassGUID
{4D36E96A-E325-11CE-BFC1-08002BE10318}
nv 1 Service
ed Service
pciide

cd \ControlSet001\Control\CriticalDeviceDatabase
nk PCI#VEN_10AD&DEV_0001
cd PCI#VEN_10AD&DEV_0001
nv 1 ClassGUID
ed ClassGUID
{4D36E96A-E325-11CE-BFC1-08002BE10318}
nv 1 Service
ed Service
pciide

cd \ControlSet001\Control\CriticalDeviceDatabase
nk PCI#VEN_10AD&DEV_0150
cd PCI#VEN_10AD&DEV_0150
nv 1 ClassGUID
ed ClassGUID
{4D36E96A-E325-11CE-BFC1-08002BE10318}
nv 1 Service
ed Service
pciide

cd \ControlSet001\Control\CriticalDeviceDatabase
nk PCI#VEN_10B9&DEV_5215
cd PCI#VEN_10B9&DEV_5215
nv 1 ClassGUID
ed ClassGUID
{4D36E96A-E325-11CE-BFC1-08002BE10318}
nv 1 Service
ed Service
pciide

cd \ControlSet001\Control\CriticalDeviceDatabase
nk PCI#VEN_10B9&DEV_5219
cd PCI#VEN_10B9&DEV_5219
nv 1 ClassGUID
ed ClassGUID
{4D36E96A-E325-11CE-BFC1-08002BE10318}
nv 1 Service
ed Service
pciide

cd \ControlSet001\Control\CriticalDeviceDatabase
nk PCI#VEN_10B9&DEV_5229
cd PCI#VEN_10B9&DEV_5229
nv 1 ClassGUID
ed ClassGUID
{4D36E96A-E325-11CE-BFC1-08002BE10318}
nv 1 Service
ed Service
pciide

cd \ControlSet001\Control\CriticalDeviceDatabase
nk PCI#VEN_1106&DEV_0571
cd PCI#VEN_1106&DEV_0571
nv 1 Service
ed Service
pciide
nv 1 ClassGUID
ed ClassGUID
{4D36E96A-E325-11CE-BFC1-08002BE10318}

cd \ControlSet001\Control\CriticalDeviceDatabase
nk PCI#VEN_8086&DEV_1222
cd PCI#VEN_8086&DEV_1222
nv 1 ClassGUID
ed ClassGUID
{4D36E96A-E325-11CE-BFC1-08002BE10318}
nv 1 Service
ed Service
intelide

cd \ControlSet001\Control\CriticalDeviceDatabase
nk PCI#VEN_8086&DEV_1230
cd PCI#VEN_8086&DEV_1230
nv 1 ClassGUID
ed ClassGUID
{4D36E96A-E325-11CE-BFC1-08002BE10318}
nv 1 Service
ed Service
intelide

cd \ControlSet001\Control\CriticalDeviceDatabase
nk PCI#VEN_8086&DEV_2411
cd PCI#VEN_8086&DEV_2411
nv 1 ClassGUID
ed ClassGUID
{4D36E96A-E325-11CE-BFC1-08002BE10318}
nv 1 Service
ed Service
intelide

cd \ControlSet001\Control\CriticalDeviceDatabase
nk PCI#VEN_8086&DEV_2421
cd PCI#VEN_8086&DEV_2421
nv 1 ClassGUID
ed ClassGUID
{4D36E96A-E325-11CE-BFC1-08002BE10318}
nv 1 Service
ed Service
intelide

cd \ControlSet001\Control\CriticalDeviceDatabase
nk PCI#VEN_8086&DEV_7010
cd PCI#VEN_8086&DEV_7010
nv 1 ClassGUID
ed ClassGUID
{4D36E96A-E325-11CE-BFC1-08002BE10318}
nv 1 Service
ed Service
intelide

cd \ControlSet001\Control\CriticalDeviceDatabase
nk PCI#VEN_8086&DEV_7111
cd PCI#VEN_8086&DEV_7111
nv 1 ClassGUID
ed ClassGUID
{4D36E96A-E325-11CE-BFC1-08002BE10318}
nv 1 Service
ed Service
intelide

cd \ControlSet001\Control\CriticalDeviceDatabase
nk PCI#VEN_8086&DEV_7199
cd PCI#VEN_8086&DEV_7199
nv 1 ClassGUID
ed ClassGUID
{4D36E96A-E325-11CE-BFC1-08002BE10318}
nv 1 Service
ed Service
intelide


cd \ControlSet001\services
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


cd \ControlSet001\services
nk intelide
cd intelide
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


cd \ControlSet001\services
nk pciide
cd pciide
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
    echo "usage: ./patch.sh path"
    echo ""
    echo "path = path to mounted windows"
    exit
fi


# check if we need registry patch for win7 or winxp
mergeIDE=$win7
winString="Windows 7"




echo "patching registry for $winString"

# system registry (winXP: /WINDOWS/system32/config/system; win7: /Windows/System32/config/SYSTEM)
echo "searching for system registry"
sysReg=`find $dir -type f -iwholename '*/windows/system32/config/system' | head -n1`
echo "found: $sysReg"

# backup old registry
echo "backup registry from $sysReg to ${sysReg}.bak"
cp "$sysReg" "${sysReg}.bak"


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
