# Copyright 1999-2021 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

# @ECLASS: janet-executable
# @MAINTAINER:
# crocket <748856+crocket@users.noreply.github.com>
# @BLURB: An eclass for building and installing janet executables with jpm

inherit janet-common

EXPORT_FUNCTIONS src_compile src_install

BDEPEND="dev-janet/jpm"

janet-executable_src_compile() {
	janet-common_compile
}

janet-executable_src_install() {
	janet-common_install
}
