#!/bin/bash

# 設定
ISO_PATH="/Users/shintaro_lv3/Downloads/downloaded.iso"
USB_DEVICE="/dev/disk6"
BLOCK_SIZE="1m" # またはGNU ddの場合は1M

while true; do
  echo "Calculating checksum for ISO file..."
  checksum_iso=$(pv "$ISO_PATH" | shasum | awk '{print $1}')
  echo "ISO checksum: $checksum_iso"

  echo "Calculating checksum for USB device..."
  checksum_usb=$(sudo dd if="$USB_DEVICE" bs=$BLOCK_SIZE | pv | shasum | awk '{print $1}')
  echo "USB checksum: $checksum_usb"

  if [ "$checksum_iso" = "$checksum_usb" ]; then
    echo "The checksums are the same."
  else
    echo "The checksums are different."
  fi

  read -p "Repeat comparison? (y/n): " answer
  case $answer in
    [Yy]* ) continue;;
    [Nn]* ) break;;
    * ) echo "Please answer yes or no.";;
  esac
done

