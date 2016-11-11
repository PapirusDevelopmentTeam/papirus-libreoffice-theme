#/bin/bash
echo "Papirus LibreOffice themes"
sleep 5
echo "Delete old Papirus icon theme ..."
sudo rm /usr/share/libreoffice/share/config/images_papiru*
echo "Download new version from GitHub ..."
sudo wget -c https://raw.githubusercontent.com/PapirusDevelopmentTeam/papirus-libreoffice-theme/master/images_papirus.zip -O /usr/share/libreoffice/share/config/images_papirus.zip
sudo wget -c https://raw.githubusercontent.com/PapirusDevelopmentTeam/papirus-libreoffice-theme/master/images_papirus_dark.zip -O /usr/share/libreoffice/share/config/images_papirus_dark.zip
echo "Installing ..."
sudo ln -s /usr/share/libreoffice/share/config/images_papirus.zip /usr/lib/libreoffice/share/config/images_papirus.zip
sudo ln -s /usr/share/libreoffice/share/config/images_papirus_dark.zip /usr/lib/libreoffice/share/config/images_papirus_dark.zip
sudo chmod -R 755 /usr/share/libreoffice/share/config/images_papiru*
echo "Done!"
