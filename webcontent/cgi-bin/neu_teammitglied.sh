#!/bin/bash
echo "Name:"
read name

echo "Hopper Username:"
read hopper

echo "Avatar:"
read img

echo "Text:"
read txt

echo "$name $hopper $img $txt" >> data/team_list.dat
