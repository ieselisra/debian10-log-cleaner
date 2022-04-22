#!/bin/bash

# This script finds all files on "/var/log" and clear their content, leaving
# the original filenames and directories structure "untouched".
#
# https://github.com/ieselisra/debian10-log-cleaner/
#

echo "Cleaning /var/log (with sudo permissions)"

for foundFile in $(sudo find /var/log/ -type f)
do
   # Delete *.gz files (older logs), leaving the ".1" files ("not so older log")
   if [[ $foundFile == *.gz ]]
   then
      sudo rm $foundFile
   else
      sudo cp /dev/null  $foundFile
   fi
done

# Show feedback
echo "---  ALL CLEAN  ---"
echo "Actual directory size"
sudo du -h /var/log
