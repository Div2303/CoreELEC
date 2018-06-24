################################################################################
#      This file is part of Alex@ELEC - http://www.alexelec.in.ua
#      Copyright (C) 2011-present Alexandr Zuyev (alex@alexelec.in.ua)
################################################################################

PKG_NAME="oem"
PKG_VERSION=""
PKG_ARCH="any"
PKG_LICENSE="various"
PKG_SITE="http://alexelec.in.ua"
PKG_URL=""
PKG_DEPENDS_TARGET="toolchain mc"
PKG_SECTION="virtual"
PKG_SHORTDESC="OEM: Metapackage for various OEM packages"
PKG_LONGDESC="OEM: Metapackage for various OEM packages"

# torrent services
  PKG_DEPENDS_TARGET="$PKG_DEPENDS_TARGET scan-m3u"
  PKG_DEPENDS_TARGET="$PKG_DEPENDS_TARGET noxbit"
  PKG_DEPENDS_TARGET="$PKG_DEPENDS_TARGET acestream-aml"

# tv services
  PKG_DEPENDS_TARGET="$PKG_DEPENDS_TARGET oscam"
  PKG_DEPENDS_TARGET="$PKG_DEPENDS_TARGET tvheadend"
