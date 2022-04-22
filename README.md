# debian10-log-cleaner
Shell script that cleans the /var/log dir keeping all filenames and directories structure untouched, removing the .*gz files and leaving the "newer older logs" (*.1 files)

Requires "sudo permissions"

## Usage
make it executable and launch

sudo chmod +x log_cleaner.sh && ./log_cleaner.sh
