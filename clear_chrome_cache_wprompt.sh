#!/bin/bash
### Chrome - Clear Cache & Cookies for All Profiles w/ User Confirmation Prompt ###

# Will run all commands as the user
sudo -u $(stat -f "%Su" /dev/console) /bin/sh <<'END'
# Name of Profile: This variable is used to place the name of the profile into the user prompt message.
name_of_profile="Clear Cache & Cookies for Chrome"

# Custom message: Edit the verbiage for the prompt if needed.
custom_message="Are you sure you want to "$name_of_profile"? \n \n(This will close Chrome & sign you out of all web-based applications. It can fix authentication issues you may be experiencing)"

# Prompt the user with a custom popup
response=$(osascript -e "tell app \"System Events\" to display dialog \"$custom_message\" buttons {\"Yes\", \"Cancel\"} default button \"Cancel\"")

# Check the response
if [[ "$response" == *"Yes"* ]]; then
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
  
# Notify the user  
  # Custom message: Edit the verbiage for the prompt if needed.
  custom_message2="Chrome Cache & Cookies has been cleared successfully!"

  # Prompt the user with a custom popup
  response=$(osascript -e "tell app \"System Events\" to display dialog \"$custom_message2\" buttons {\"OK\"} default button \"OK\"")

else
    echo "User selected Cancel. Exiting the process."
    exit 1
fi

# CodeCredit: John Hirokawa
END     
