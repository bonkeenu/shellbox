#!/bin/sh
. config

echo "ローカル登録するUsername は ${username}です."
echo "ローカル登録するメールアドレスは${mail} です."
echo "configの設定をしますか？ [Y/n]"
read ANSWER

case $ANSWER in
    "Y" | "y" | "yes" | "Yes" | "YES" )
git config --local user.name ${username} 
git config --local user.email ${mail} ;;
    * ) echo "設定をキャンセルしました。";;
esac

