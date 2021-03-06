################################################################################
#      This file is part of Alex@ELEC - http://www.alexelec.in.ua
#      Copyright (C) 2011-present Alexandr Zuyev (alex@alexelec.in.ua)
################################################################################

PKG_NAME="slang"
PKG_VERSION="2.2.4"
PKG_SHA256="9a8257a9a2a55099af858b13338dc8f3a06dd2069f46f0df2c9c3bb84a01d5db"
PKG_ARCH="any"
PKG_LICENSE="GPL"
PKG_SITE="http://www.jedsoft.org/slang"
PKG_URL="ftp://ftp.fu-berlin.de/pub/unix/misc/slang/v2.2/$PKG_NAME-$PKG_VERSION.tar.bz2"
PKG_DEPENDS_TARGET="toolchain"
PKG_SECTION="xmedia/tools"
PKG_SHORTDESC="slang: library for the S-Lang extension language"
PKG_LONGDESC="S-Lang is an interpreted language and a programming library.  The S-Lang language was designed so that it can be easily embedded into a program to provide the program with a powerful extension language.  The S-Lang library, provided in this package, provides the S-Lang extension language.  S-Lang's syntax resembles C, which makes it easy to recode S-Lang procedures in C if you need to."
PKG_BUILD_FLAGS="-parallel"

pre_configure_target() {
 # slang fails to build in subdirs
 cd $PKG_BUILD
 rm -rf .$TARGET_NAME
}

pre_configure_host() {
 # slang fails to build in subdirs
 cd $PKG_BUILD
 rm -rf .$HOST_NAME
}

configure_target() {
./configure --host=$TARGET_NAME \
	--build=$HOST_NAME \
	--prefix=/usr \
	--exec-prefix=/usr \
	--sysconfdir=/etc \
	--datadir=/usr/share \
	--without-iconv \
	--without-onig \
	--without-pcre \
	--without-png \
	--without-z \
	--without-x \
    fu_cv_sys_stat_st
}
