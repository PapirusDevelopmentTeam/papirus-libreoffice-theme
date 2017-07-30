PREFIX ?= /usr/share
NAME ?= libreoffice

all:

install:
	install -dpm 755 $(DESTDIR)$(PREFIX)/libreoffice/share/config
	install -Dpm 644 images_papirus.zip $(DESTDIR)$(PREFIX)/$(NAME)/share/config/images_papirus.zip
	install -Dpm 644 images_epapirus.zip $(DESTDIR)$(PREFIX)/$(NAME)/share/config/images_epapirus.zip
	install -Dpm 644 images_papirus_dark.zip $(DESTDIR)$(PREFIX)/$(NAME)/share/config/images_papirus_dark.zip

uninstall:
	-rm -f $(DESTDIR)$(PREFIX)/$(NAME)/share/config/images_papirus.zip
	-rm -f $(DESTDIR)$(PREFIX)/$(NAME)/share/config/images_epapirus.zip
	-rm -f $(DESTDIR)$(PREFIX)/$(NAME)/share/config/images_papirus_dark.zip

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
