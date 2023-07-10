#!/bin/bash

if [[ $# -eq 0 ]] ; then
    echo 'You need to call this script with an .env file'
    echo 'ex: sh copyEnvVars.sh path/to/.env'
    exit 0
fi

# usage - sh copyEnvVars.sh path/to/.env

# you need to have an .env file in the project
# source ../.env
source $1

# android
# copies appcenter secret to android file
sed -i '' "s|\"app_secret\":.*|\"app_secret\": \"${APPCENTER_SECRET_ANDROID}\"|g" ../android/app/src/main/assets/appcenter-config.json

# ios
# copies appcenter secret to ios file
plutil -replace AppSecret -string "$APPCENTER_SECRET_IOS" ../ios/AppCenter-Config.plist