#!/bin/bash
### Chrome - Clear Cache & Cookies for All Profiles (Force) ###

# Will run all commands as the user
sudo -u $(stat -f "%Su" /dev/console) /bin/sh <<'END'

# Kill Chrome if it's running
killall Google\ Chrome

# List of users
userList=$(dscl . -list /Users | grep -v "_" | grep -v "daemon" | grep -v "nobody" | grep -v "root" | awk -F '/' '{print $NF}')

# Loop through each user and clear Chrome cache and cookies
for user in $userList; do
rm -rf /Users/"$user"/Library/Caches/Google/Chrome
rm -rf /Users/"$user"/Library/Caches/com.google.Chrome
rm -rf /Users/"$user"/Library/Application\ Support/Google/Chrome/Default/Cookies
rm -rf /Users/"$user"/Library/Application\ Support/Google/Chrome/Default/Cache
done

# Wait for a few seconds to ensure all operations are complete
sleep 5

# Re-open Chrome
open -a "Google Chrome"

exit 1
fi

# CodeCredit: John Hirokawa
END      
