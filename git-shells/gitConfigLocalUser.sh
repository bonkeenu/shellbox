#!/bin/sh

# Getting config path and Reading config file.
path=$(cd $(dirname $0) && pwd)
. "$path/config"

# Check your infomations.
echo "ローカル登録するUsername は $username です."
echo "ローカル登録するメールアドレスは $mail です."

echo ".git/config の設定をしますか？ [Y/n]"
read ANSWER

case $ANSWER in
    "Y" | "y" | "yes" | "Yes" | "YES" )
git config --local user.name $username
git config --local user.email $mail ;;
    * ) printf "\e[33;41;1m設定をキャンセルしました. \e[m";;
esac

