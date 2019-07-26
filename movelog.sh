#!bin/bash
#This basically deletes the file named statelog.yyyymmdd which is 2 or more weeks old
find  /tmp/statelog* -type f -mtime +14 -exec rm -f {} \;
#Adding the content of state.log file to statelog.yyyymmdd where yyyymmdd is the current date
cat /tmp/state.log >> /tmp/statelog.$(date +"%Y%m%d")
