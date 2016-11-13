#!/usr/bin/env bash
echo "Remove Papirus LibreOffice themes"
sudo rm /usr/share/libreoffice/share/config/{images_papirus.zip,images_papirus_dark.zip}
sudo rm /usr/lib/libreoffice/share/config/{images_papirus.zip,images_papirus_dark.zip}
echo "Done!"
