#!/bin/sh

# check mail with mbsync every minute

# kill any running mbsync instances
#pkill mbsync &>/dev/null

# runs mbsync and writes the output to a file
mbsync -a 
exit 0
