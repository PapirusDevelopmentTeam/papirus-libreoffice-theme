all: install

install:
	mkdir -p $(DESTDIR)/usr/share/libreoffice/share/config
	cp --no-preserve=mode,ownership -r \
		images_papirus.zip \
		images_papirus_dark.zip \
		$(DESTDIR)/usr/share/libreoffice/share/config
	mkdir -p $(DESTDIR)/usr/lib/libreoffice/share/config
	ln -s $(DESTDIR)/usr/share/libreoffice/share/config/images_papirus.zip \
		$(DESTDIR)/usr/lib/libreoffice/share/config/images_papirus.zip
	ln -s $(DESTDIR)/usr/share/libreoffice/share/config/images_papirus_dark.zip \
		$(DESTDIR)/usr/lib/libreoffice/share/config/images_papirus_dark.zip

uninstall:
	-rm -f $(DESTDIR)/usr/share/libreoffice/share/config/images_papirus.zip
	-rm -f $(DESTDIR)/usr/share/libreoffice/share/config/images_papirus_dark.zip
	-rm -f $(DESTDIR)/usr/lib/libreoffice/share/config/images_papirus.zip
	-rm -f $(DESTDIR)/usr/lib/libreoffice/share/config/images_papirus_dark.zip

_get_version:
	$(eval DATE := $(shell git log -1 --format=%cd --date=format:%Y.%m.%d))
	$(eval COUNT := $(shell git rev-list --all --count))
	$(eval VERSION := $(DATE)-r$(COUNT))

push:
	git push origin

release: _get_version push
	git tag -f $(VERSION)
	git push origin --tags

undo_release: _get_version
	-git tag -d $(VERSION)
	-git push --delete origin $(VERSION)


.PHONY: all install uninstall _get_version push release undo_release
