################################################################################
#      This file is part of LibreELEC - https://libreelec.tv
#      Copyright (C) 2017-present Team LibreELEC
#
#  LibreELEC is free software: you can redistribute it and/or modify
#  it under the terms of the GNU General Public License as published by
#  the Free Software Foundation, either version 2 of the License, or
#  (at your option) any later version.
#
#  LibreELEC is distributed in the hope that it will be useful,
#  but WITHOUT ANY WARRANTY; without even the implied warranty of
#  MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
#  GNU General Public License for more details.
#
#  You should have received a copy of the GNU General Public License
#  along with LibreELEC.  If not, see <http://www.gnu.org/licenses/>.
################################################################################

PKG_NAME="intel-vaapi-driver"
PKG_VERSION="2.2.0"
PKG_SHA256="13eb518bd168106a64d8e1c0f0a72e9b9937e6fd9a4c713a10f51e52508ea9b2"
PKG_ARCH="x86_64"
PKG_LICENSE="GPL"
PKG_SITE="https://01.org/linuxmedia"
PKG_URL="https://github.com/intel/intel-vaapi-driver/archive/$PKG_VERSION.tar.gz"
PKG_DEPENDS_TARGET="toolchain libva libdrm"
PKG_SECTION="multimedia"
PKG_SHORTDESC="intel-vaapi-driver: VA-API user mode driver for Intel GEN Graphics family"
PKG_LONGDESC="intel-vaapi-driver: VA-API user mode driver for Intel GEN Graphics family"
PKG_TOOLCHAIN="autotools"

if [ "$DISPLAYSERVER" = "x11" ]; then
  DISPLAYSERVER_LIBVA="--enable-x11 --disable-wayland"
elif [ "$DISPLAYSERVER" = "weston" ]; then
  DISPLAYSERVER_LIBVA="--disable-x11 --enable-wayland"
else
  DISPLAYSERVER_LIBVA="--disable-x11 --disable-wayland"
fi

PKG_CONFIGURE_OPTS_TARGET="--disable-silent-rules \
                           --enable-drm \
                           $DISPLAYSERVER_LIBVA"
