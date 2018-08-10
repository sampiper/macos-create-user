#!/bin/bash

#MAXID=$(dscl . -list /Users UniqueID | awk '{print $2}' | sort -ug | tail -1)
#USERID=$((MAXID+1))
#DISKID=$((MAXID+2))

#dscl . -create /Users/tab-admin
#dscl . -create /Users/tab-admin RealName "$1"
#dscl . -passwd /Users/tab-admin "$2"
#dscl . -create /Users/tab-admin UserShell "/bin/bash -r"
#dscl . -create /Users/tab-admin NFSHomeDirectory /Users/$3
#dscl . -create /Users/tab-admin PrimaryGroupID 20
#dscl . -create /Users/tab-admin UniqueID "$USERID"


sysadminctl interactive -addUser "$3" -fullName "$1" -password "$2" -admin
