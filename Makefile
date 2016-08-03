INSTALLDIR-ARCH = $(DESTDIR)/usr/lib/libreoffice/share/config/
INSTALLDIR-AUR = $(DESTDIR)/opt/libreoffice5.2/share/config/
RM = rm -rf

all:

install: local

clear:
	$(RM) $(INSTALLDIR-ARCH)images_papirus{,_dark}.zip
	$(RM) $(INSTALLDIR-AUR)images_papirus{,_dark}.zip
local:

	find images_papirus{,_dark}.zip -type f -exec install -Dm644 '{}' "$(INSTALLDIR-ARCH){}" \;
	find images_papirus{,_dark}.zip -type f -exec install -Dm644 '{}' "$(INSTALLDIR-AUR){}" \;

uninstall: clear
