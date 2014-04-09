#!/bin/sh

echo "**** Cleanup datawarehouse.dev ****"

vagrant destroy

echo "Cleanup .vagrant directory"

rm -rf .vagrant

echo "Cleanup index.html"

rm index.html

echo "Cleanup datawarehouse"

rm -rf datawarehouse