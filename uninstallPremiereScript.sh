#!/bin/bash

# Define the application path
APP_PATH="/Applications/Adobe Premiere Pro 2023/Adobe Premiere Pro 2023.app"

# Check if the application exists
if [ -d "$APP_PATH" ]; then
    echo "Uninstalling Adobe Premiere Pro 2023..."

    # Remove the application
    rm -rf "$APP_PATH"

    # Remove related files and directories
    rm -rf ~/Library/Application\ Support/Adobe/Premiere\ Pro\ 2023
    rm -rf ~/Library/Caches/com.adobe.PremierePro
    rm -rf ~/Library/Preferences/com.adobe.PremierePro.plist
    rm -rf /Library/Application\ Support/Adobe/Premiere\ Pro\ 2023
    rm -rf /Library/Preferences/com.adobe.PremierePro.plist

    echo "Adobe Premiere Pro 2023 has been successfully uninstalled."
else
    echo "Adobe Premiere Pro 2023 is not installed on this machine."
fi

exit 0
