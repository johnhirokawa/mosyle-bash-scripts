#!/bin/bash
# Dock - Reset
# Description: This script resets the Dock to its default state by clearing existing items and adding specified applications.

# Will run all commands as the user
sudo -u $(stat -f "%Su" /dev/console) /bin/sh <<'END'

# Name of Profile: This variable is used to place the name of the profile into the user prompt message.
name_of_profile="Reset Dock"

# Custom message: Edit the verbiage for the prompt if needed.
custom_message="Are you sure you want to $name_of_profile to default? \n \nIf Yes, select Continue. If No, select Cancel."

# Prompt the user with a custom popup
response=$(osascript -e "tell app \"System Events\" to display dialog \"$custom_message\" buttons {\"Continue\", \"Cancel\"} default button \"Continue\"")

# Check the response
if [[ "$response" == *"Continue"* ]]; then
    echo "User selected Continue. Running the designated script..."
    
    # Clear the existing dock items
    defaults write com.apple.dock persistent-apps -array

    # Add applications to the dock
    add_app_to_dock() {
        defaults write com.apple.dock persistent-apps -array-add "<dict><key>tile-data</key><dict><key>file-data</key><dict><key>_CFURLString</key><string>$1</string><key>_CFURLStringType</key><integer>0</integer></dict></dict></dict>"
    }

    # Specify the paths to the applications you want in the dock
    add_app_to_dock "/System/Applications/Launchpad.app"
    add_app_to_dock "/Applications/1Password 7.app"
    add_app_to_dock "/Applications/Google Chrome.app"
    add_app_to_dock "/Applications/Microsoft Edge.app"
    add_app_to_dock "/System/Volumes/Preboot/Cryptexes/App/System/Applications/Safari.app"
   _dock "/Applications/zoom.us.app"
    add_app_to_dock "/Applications/Microsoft Excel.app"
    add_app_to_dock "/Applications/Microsoft OneNote.app"
    add_app_to_dock "/Applications/Microsoft Outlook.app"
    add_app_to_dock "/Applications/Microsoft PowerPoint.app"
    add_app_to_dock "/Applications/Microsoft Word.app"
    add_app_to_dock "/Applications/Adobe Acrobat Reader.app"
    add_app_to_dock "/Applications/OneDrive.app"
    add_app_to_dock "/System/Applications/System Settings.app"
    add_app_to_dock "/Applications/Self-Service.app"
    # Add more applications as needed

    # Restart the Dock to apply changes
    killall Dock

else
    echo "User selected Cancel. Exiting the process."
    exit 1
fi

END

#CodeCredit: John Hirokawa
