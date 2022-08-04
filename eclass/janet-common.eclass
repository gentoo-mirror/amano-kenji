# Copyright 1999-2021 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

# @ECLASS: janet-common.eclass
# @MAINTAINER:
# amano.kenji <amano.kenji@proton.me>
# @BLURB: An eclass for janet helper functions

# @FUNCTION: janet-common_janet_path
# @DESCRIPTION:
# Get JANET_PATH for installation
janet-common_janet_path() {
	echo "$(janet -e '(print (dyn :syspath))')"
}

# @FUNCTION: janet-common_compile
# @DESCRIPTION:
# Build a jpm project
janet-common_compile() {
	jpm build || die
}

# @FUNCTION: janet-common_install
# @DESCRIPTION:
# Install a jpm project
janet-common_install() {
	janet_path="$(janet-common_janet_path)"
	mkdir -p "${ED}${janet_path}"
	jpm --dest-dir="${ED}" --modpath="${janet_path}" --binpath="/usr/bin" install
	einstalldocs
}
