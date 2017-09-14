# Some known prefixes:
#  - /usr/lib64      # a few 64-bit distros
#  - /usr/local/lib  # BSD systems
PREFIX ?= /usr/lib
NAME ?= libreoffice

all:

install:
	[ -d $(DESTDIR)$(PREFIX)/libreoffice/share/config ] \
		|| mkdir -p $(DESTDIR)$(PREFIX)/libreoffice/share/config
	install -m 644 images_papirus.zip \
		$(DESTDIR)$(PREFIX)/$(NAME)/share/config/images_papirus.zip
	install -m 644 images_epapirus.zip \
		$(DESTDIR)$(PREFIX)/$(NAME)/share/config/images_epapirus.zip
	install -m 644 images_papirus_dark.zip \
		$(DESTDIR)$(PREFIX)/$(NAME)/share/config/images_papirus_dark.zip

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
