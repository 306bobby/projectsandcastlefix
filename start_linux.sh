#!/bin/sh

if [ "$EUID" -ne 0 ]; then
	echo "Please run as root."
	exit 1
fi

export DYLD_LIBRARY_PATH=./

# dir is just the current directory?
DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" >/dev/null 2>&1 && pwd )"
cd "$DIR"

export CHECKRA1N_LOG_PATH=$PWD/out.log
echo "$CHECKRA1N_LOG_PATH"
# remove output log
rm -rf "$CHECKRA1N_LOG_PATH"

#not very important
#killall -9 checkra1n > /dev/null 2>&1

BOOT=0
FOUND=0

#${CHECKRA1N} -cp > /dev/null 2>&1 &
#disown
echo "Please run 'cd $PWD && sudo env CHECKRA1N_LOG_PATH=$CHECKRA1N_LOG_PATH ./checkra1n-0.10.1-x86_64 -cp' and put your device into DFU"
sleep 1;
while true; do
    grep "Booting..." ${CHECKRA1N_LOG_PATH} > /dev/null 2>&1
    if [ $? -eq 0 ]; then
		BOOT=1
		echo "Pongo loaded. Give it a second"
		sleep 10;
		break
    fi
    grep "DFU mode device found" ${CHECKRA1N_LOG_PATH} > /dev/null 2>&1
    if [ $? -eq 0 ] && [ ${FOUND} -eq 0 ]; then
        echo "Found DFU device. Starting"
		FOUND=1
    fi
    sleep 1
done
if [ ${BOOT} -eq 1 ]; then
	sleep 5;
	echo "Starting Android"
	./load-linux Android.lzma dtbpack
fi
#killall -9 checkra1n
echo "you can now stop checkra1n"
