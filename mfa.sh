#!/bin/bash

# check/install oauth
brew list oath-toolkit  ||  echo installing oath-toolkit 

echo oath-toolkit installed 

echo 'Which service are you configuring? ex: aws (the command you will use on terminal to get totp will be aws-mfa-code)'
read servicemfa

echo Insert seed
read -s seedmfa


#create secret with MFA seed in keychain 
echo Adding $servicemfa to keychain...
security add-generic-password -s $servicemfa'-mfa-seed'  -a $servicemfa+'-seed' -w $seedmfa 
echo Stored $servicemfa-mfa-seed in keychain...

echo "alias $servicemfa-mfa-code='oathtool -b --totp \$(security find-generic-password -w  -s $servicemfa -a $servicemfa)" >>  ~/.zshrc