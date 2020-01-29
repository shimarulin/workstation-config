#!/usr/bin/env bash

# https://itsfoss.com/how-to-fix-problem-with-mergelist/
sudo rm /var/lib/apt/lists/* -vf
sudo apt clean # apt-get clean
sudo apt update # apt-get update
