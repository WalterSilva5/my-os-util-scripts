#!/bin/bash

sudo mkdir -p /media/ARQUIVOS_1
sudo mkdir -p /media/ARQUIVOS_2

if sudo ntfs-3g /dev/sda1 /media/ARQUIVOS_1; then
    echo "/dev/sda1 mounted successfully on /media/ARQUIVOS_1"
else
    echo "Failed to mount /dev/sda1 on /media/ARQUIVOS_1"
fi

if sudo ntfs-3g /dev/sda2 /media/ARQUIVOS_2; then
    echo "/dev/sda2 mounted successfully on /media/ARQUIVOS_2"
else
    echo "Failed to mount /dev/sda2 on /media/ARQUIVOS_2"
    echo "Please ensure the filesystem is consistent by running chkdsk /f on Windows"
fi
