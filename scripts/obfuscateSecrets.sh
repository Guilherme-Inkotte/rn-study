#!/bin/bash

# android
# obfuscates appcenter secret on android
sed -i '' "s|\"app_secret\": \".*\"|\"app_secret\": \"hidden\"|g" ../android/app/src/main/assets/appcenter-config.json

# ios
# obfuscates appcenter secret on ios file
plutil -replace AppSecret -string "hidden" ../ios/AppCenter-Config.plist