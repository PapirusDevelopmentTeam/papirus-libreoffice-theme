<p align="center">
  <img src="https://raw.githubusercontent.com/PapirusDevelopmentTeam/papirus-libreoffice-theme/master/preview.png" alt="preview"/>
</p>

Papirus theme for LibreOffice is available in three variants:

 - ePapirus
 - Papirus
 - Papirus Dark

**NOTE:** Go to _Tools_ → _Options_ → _LibreOffice_ → _View_ to choose the theme.

## Installation

### Ubuntu and derivatives

You can install libreoffice-style-papirus from our official [PPA](https://launchpad.net/~papirus/+archive/ubuntu/papirus):

```
sudo add-apt-repository ppa:papirus/papirus
sudo apt-get update
sudo apt-get install libreoffice-style-papirus
```

or download .deb packages from [here](https://launchpad.net/~papirus/+archive/ubuntu/papirus/+packages?field.name_filter=papirus-icon-theme).

**NOTE:** The deb package doesn't support [official fresh builds](https://www.libreoffice.org/download/). Use Papirus Installer for these.

### Papirus Installer

Use the script to install the latest version directly from this repo (independently on your distro):

```
wget -qO- https://raw.githubusercontent.com/PapirusDevelopmentTeam/papirus-libreoffice-theme/master/install-papirus-root.sh | sh
```

#### Remove

```
wget -qO- https://raw.githubusercontent.com/PapirusDevelopmentTeam/papirus-libreoffice-theme/master/remove-papirus.sh | sh
```

### Unofficial packages

Packages in this section are not part of the official repositories. If you have a trouble or a question please contact with package maintainer.

| **Distro** | **Maintainer**    | **Package** |
|:-----------|:------------------|:------------|
| Arch Linux | Icaro Perseo      | [papirus-libreoffice-theme](https://aur.archlinux.org/packages/papirus-libreoffice-theme/) <sup>AUR</sup> |
| Fedora     | Dirk Davidis      | [libreoffice-style-papirus](https://copr.fedorainfracloud.org/coprs/dirkdavidis/papirus-libreoffice-theme/) <sup>copr</sup> |
| Manjaro    | Nikola Yanev      | [papirus-libreoffice-theme](http://download.tuxfamily.org/gericom/README.html) |
| openSUSE   | Konstantin Voinov | [libreoffice-icon-theme-papirus](https://software.opensuse.org/download.html?project=home:kill_it&package=libreoffice-icon-theme-papirus) <sup>OBS [[link](https://build.opensuse.org/package/show/home:kill_it/libreoffice-icon-theme-papirus)]</sub> |

**NOTE:** If you maintainer and want be in the list please create an issue or send a pull request.
