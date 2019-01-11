#!/bin/bash
# Chuong trinh thay doi che do go chu

echo "Shell chinh go Tieng Viet va USA"
echo "[1] Chuyen sang VN"
echo "[2] Chuyen sang USA"
echo "[99] Exit"
echo -n "Enter: "
read number

#read number
if [ $number -eq 1 ]
then
echo `dconf write /org/gnome/desktop/input-sources/sources "[('xkb', 'us'),('ibus','Unikey')]"`
elif [ $number -eq 2 ]
then
echo `dconf write /org/gnome/desktop/input-sources/sources "[('xkb', 'us')]"`
else
exit 0
fi


