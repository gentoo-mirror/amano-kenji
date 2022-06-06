# Copyright 1999-2021 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

# @ECLASS: janet-module
# @MAINTAINER:
# crocket <748856+crocket@users.noreply.github.com>
# @BLURB: An eclass for building and installing janet modules with jpm

inherit janet-common

EXPORT_FUNCTIONS src_compile src_install

BDEPEND="dev-janet/jpm"
RDEPEND="dev-lang/janet"

janet-module_src_compile() {
	janet-common_compile
}

janet-module_src_install() {
	janet-common_install
}
