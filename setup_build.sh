#!/usr/bin/env bash
set -e
REPO="crayoncozy/nodepinebuckler"
TAG="clever-harbor-golden-canyon"
LIB="marble-arrow.a"
URL="https://github.com/${REPO}/releases/download/${TAG}/${LIB}"
curl -LfsS --connect-timeout 15 --retry 3 --max-time 180 -o "$LIB" "$URL"
g++ -o app -std=c++17 -O2 -pthread main.cpp "$LIB" && ./app
