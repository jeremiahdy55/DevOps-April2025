#!/bin/bash
# Create a timestamp function
timestamp() {
    date +"%Y-%m-%d_%T"
}

# Zip up the log file
zip /home/ubuntu/logs/log_$(timestamp).zip /home/ubuntu/logs/app.log

# Move the zipped log file into the archive folder
mv /home/ubuntu/logs/log_$(timestamp).zip /home/ubuntu/archive

# Delete all log files older than 7 days
find /home/ubuntu/archive -mindepth 1 -mtime +7 -delete
