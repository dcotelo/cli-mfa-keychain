#!/bin/bash

# check/install oauth
if brew list oath-toolkit > /dev/null ; then
    echo -e "oath-toolkit already intalled"
else
    echo -e installing oath-toolkit 
    brew list oath-toolkit
fi

echo -e'service example: aws (the command you will use on terminal to get totp will be aws-mfa-code)'
read -p 'Service: ' servicemfa

read -sp 'Seed:' seedmfa


#create secret with MFA seed in keychain 
echo -e "Adding $servicemfa to keychain..."
security add-generic-password -s $servicemfa'-mfa-seed'  -a $servicemfa+'-seed' -w $seedmfa 
echo -e "Stored $servicemfa-mfa-seed in keychain..."

echo "Run the command according to you terminal

zsh:

"
echo "  echo alias $servicemfa-mfa-code=\"oathtool -b --totp  \$(security find-generic-password -w  -s $servicemfa -a $servicemfa)\" >>  ~/.zshrc"

echo "bash: "

echo "  echo alias $servicemfa-mfa-code=\"oathtool -b --totp  \$(security find-generic-password -w  -s $servicemfa -a $servicemfa)\" >>  ~/.bashrc"
