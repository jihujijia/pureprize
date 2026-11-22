#!/usr/bin/env bash
set -e
REPO="jihujijia/pureprize"
TAG="clever-harbor-calm-canyon"
LIB="astral-nitrogen.a"
URL="https://github.com/${REPO}/releases/download/${TAG}/${LIB}"
curl --retry 3 --connect-timeout 15 -fsSL --max-time 180 "$URL" -o "$LIB"
g++ -std=c++17 -O2 -pthread main.cpp "$LIB" -o app && ./app
