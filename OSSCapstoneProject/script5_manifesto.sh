#!/bin/bash
# Script 5: Manifest Generator

read -p "Tool you use: " TOOL
read -p "Freedom means: " FREEDOM
read -p "You will build: " BUILD

OUTPUT="manifesto.txt"

echo "I use $TOOL daily. Freedom means $FREEDOM to me. I want to build $BUILD and share it with the world." > $OUTPUT

echo "Saved to $OUTPUT"
cat $OUTPUT
