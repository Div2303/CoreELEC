################################################################################
#      This file is part of LibreELEC - https://libreelec.tv
#      Copyright (C) 2018-present Team LibreELEC
#      Copyright (C) 2009-2016 Stephan Raue (stephan@openelec.tv)
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

PKG_NAME="libXfont2"
PKG_VERSION="2.0.3"
PKG_SHA256="0e8ab7fd737ccdfe87e1f02b55f221f0bd4503a1c5f28be4ed6a54586bac9c4e"
PKG_ARCH="any"
PKG_LICENSE="OSS"
PKG_SITE="http://www.X.org"
PKG_URL="http://xorg.freedesktop.org/archive/individual/lib/$PKG_NAME-$PKG_VERSION.tar.bz2"
PKG_DEPENDS_TARGET="toolchain util-macros xtrans freetype libfontenc"
PKG_SECTION="x11/lib"
PKG_SHORTDESC="libxfont: X font Library"
PKG_LONGDESC="X font Library"

PKG_CONFIGURE_OPTS_TARGET="--enable-static --disable-shared \
                           --disable-ipv6 \
                           --enable-freetype \
                           --enable-builtins \
                           --disable-pcfformat \
                           --disable-bdfformat \
                           --disable-snfformat \
                           --enable-fc \
                           --with-gnu-ld \
                           --without-xmlto"
