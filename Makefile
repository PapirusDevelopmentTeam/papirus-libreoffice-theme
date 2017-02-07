all:

install:
	mkdir -p $(DESTDIR)/usr/share/libreoffice/share/config
	cp --no-preserve=mode,ownership -r \
		images_papirus.zip \
		images_epapirus.zip \
		images_papirus_dark.zip \
		$(DESTDIR)/usr/share/libreoffice/share/config

uninstall:
	-rm -f $(DESTDIR)/usr/share/libreoffice/share/config/images_papirus.zip
	-rm -f $(DESTDIR)/usr/share/libreoffice/share/config/images_epapirus.zip
	-rm -f $(DESTDIR)/usr/share/libreoffice/share/config/images_papirus_dark.zip

_get_version:
	$(eval VERSION := $(shell git show -s --format=%cd --date=format:%Y%m%d HEAD))
	@echo $(VERSION)

push:
	git push origin

release: _get_version push
	git tag -f $(VERSION)
	git push origin --tags

undo_release: _get_version
	-git tag -d $(VERSION)
	-git push --delete origin $(VERSION)


.PHONY: all install uninstall _get_version push release undo_release
