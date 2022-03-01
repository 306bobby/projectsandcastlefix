# projectsandcastlefix
The Android version of Project Sandcastle will currently fail on iOS 14.4 and up. This repository fixes that.
A working isetup file and instructions are included.

If you're trying to get Project Sandcastle working, I recommend [infinity](https://github.com/fullpwn/infinity) ([Latest release](https://github.com/fullpwn/infinity/releases/latest)).
It's based off the isetup from this repo, but it's much more user friendly, and is currently the only way to get Sandcastle working for Windows users.


## Manual installation instructions

* Download and extract the Android version of [Project Sandcastle](https://projectsandcastle.org/status)
* Jailbreak with current checkra1n
* Replace the Sandcastle isetup file with the one in this git
* Run `./setup.sh` or otherwise run the isetup script on your device
* Download [checkra1n version 0.10.1](https://checkra.in/releases/0.10.1-beta) (actual download links are at the bottom of the page)
* Run the `start.sh` script. For Linux users, there is an included `start_linux.sh` (more of a development tool, but it works).

Enjoy :)



## How to fix the touchscreen on a previous installation

**Warning**: please back up your nand file. The isetup file should work on all sandcastle installations from the official nand image, but no guarantee.

All you need to do is run this isetup script on your device. The script will detect if you have already installed sandcastle.



## Known issues

checkra1n 0.10.2 works sometimes but is inconsistent.

checkra1n 0.11 crashes to pongoOS.

checkra1n 0.12-0.12.1 does not boot into pongoOS.

checkra1n 0.12.2-present does not load the image into pongoOS.
