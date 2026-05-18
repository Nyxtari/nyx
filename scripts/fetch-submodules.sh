#!/bin/bash
set -e

echo -e "\033[1;34m[Updating Main Repository]\033[0m" >&2
git pull origin $(git branch --show-current)

git config --file .gitmodules --get-regexp path | while read -r key path; do

    echo -e "\033[1;32m[Submodule: $path]\033[0m" >&2

    if git submodule update --init --remote --merge "$path"; then
        echo "OK"
    else
        echo -e "Error: access not granted to repository! Make sure you have access before retrying." >&2
    fi

done

echo -e "\033[1;36mAll updates complete.\033[0m"