#!/bin/sh

set -e

gh_repo="papirus-libreoffice-theme"
gh_desc="Papirus LibreOffice themes"

cat <<- EOF



      ppppp                         ii
      pp   pp     aaaaa   ppppp          rr  rrr   uu   uu     sssss
      ppppp     aa   aa   pp   pp   ii   rrrr      uu   uu   ssss
      pp        aa   aa   pp   pp   ii   rr        uu   uu      ssss
      pp          aaaaa   ppppp     ii   rr          uuuuu   sssss
                          pp
                          pp


  $gh_desc
  https://github.com/PapirusDevelopmentTeam/$gh_repo


EOF

echo "=> Removing $gh_desc ..."
sudo rm -f "/usr/share/libreoffice/share/config/images_papirus.zip"
sudo rm -f "/usr/share/libreoffice/share/config/images_epapirus.zip"
sudo rm -f "/usr/share/libreoffice/share/config/images_papirus_dark.zip"
sudo rm -f "/usr/lib/libreoffice/share/config/images_papirus.zip"
sudo rm -f "/usr/lib/libreoffice/share/config/images_epapirus.zip"
sudo rm -f "/usr/lib/libreoffice/share/config/images_papirus_dark.zip"
sudo rm -f "/usr/lib64/libreoffice/share/config/images_papirus.zip"
sudo rm -f "/usr/lib64/libreoffice/share/config/images_epapirus.zip"
sudo rm -f "/usr/lib64/libreoffice/share/config/images_papirus_dark.zip"
echo "=> Done!"
