#!/bin/bash
echo "This script file  will find all the hardlinks in a mounted file system"
echo "----------------------------------------------------------------------"
echo "The following shows the hardlinks to /bin "
sudo find /bin -xdev -type f -links +1 -ls | sort -n 
echo "----------------------------------------------------------------------"
echo "The following shows the hardlinks to  /usr"
sudo find /usr -xdev -type f -links +1 -ls | sort -n
