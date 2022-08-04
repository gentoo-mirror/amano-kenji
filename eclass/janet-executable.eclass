# Copyright 1999-2021 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

# @ECLASS: janet-executable.eclass
# @MAINTAINER:
# amano.kenji <amano.kenji@proton.me>
# @BLURB: An eclass for building and installing janet executables with jpm
# @DESCRIPTION:
# If your janet program contains any janet module, use janet-module.eclass

inherit janet-common

EXPORT_FUNCTIONS src_compile src_install

BDEPEND="dev-janet/jpm"

janet-executable_src_compile() {
	janet-common_compile
}

janet-executable_src_install() {
	janet-common_install
}
