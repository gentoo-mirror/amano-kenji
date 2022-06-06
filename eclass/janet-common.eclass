# Copyright 1999-2021 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

# @ECLASS: janet-common
# @MAINTAINER:
# crocket <748856+crocket@users.noreply.github.com>
# @BLURB: An eclass for janet helper functions

# @FUNCTION: janet-module_janet_path
# @DESCRIPTION: Get JANET_PATH for installation
janet-common_janet_path() {
	echo "${D}$(janet -e '(print (dyn :syspath))')"
}

# @FUNCTION: janet-common_compile
# @DESCRIPTION: Build a jpm project
janet-common_compile() {
	jpm build || die
}

# @FUNCTION: janet-common_install
# @DESCRIPTION: Install a jpm project
janet-common_install() {
	mkdir -p "$(janet-common_janet_path)"
	jpm --modpath="$(janet-common_janet_path)" --binpath="${D}/usr/bin" install
	einstalldocs
}
