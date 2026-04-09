#!/bin/sh

# exit immediately if op is already in $PATH
type op >/dev/null 2>&1 && exit

case "$(uname -s)" in
Darwin)
    # commands to install op on Darwin
    brew install --cask 1password
    brew install 1password-cli
    echo ""
    printf "Please open 1Password, log into all accounts and set under Settings>CLI activate Integrate with 1Password CLI. Press any key to continue."
    read -r dummy
    ;;
*)
    echo "Skipping 1Password install on $(uname -s)"
    exit 0
    ;;
esac
