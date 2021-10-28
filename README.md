# projectsandcastlefix
Project Sandcastle will currently fail on iOS 14.4 and up, in this git repository is how to get it functional again. Included here is the new isetup file you need in order for setup to complete as well as other instructions



## Installation instructions

* Download Project Sandcastle Android edition

* Jailbreak with current checkra1n

* Replace the Sandcastle isetup file with the one in this git

* Run ./setup.sh or otherwise run the isetup script on your device

* Download checkra1n version 0.10.1

* Run the start.sh. For linux users, there is an included start_linux.sh

Enjoy :)



## How to fix the touchscreen on a previous installation

**Warning**: please back up your nand file. The isetup file should work on all sandcastle installations from the official nand image, but no guarantee.

All you need to do is run this isetup script on your device. The script will detect if you have already installed sandcastle.



## Known issues

checkra1n 0.10.2 works sometimes but is inconsistent.

checkra1n 0.11 crashes nto pongoOS.

checkra1n 0.12-0.12.1 does not boot into pongoOS.


checkra1n 0.12.2-present does not load the image into pongoOS.
