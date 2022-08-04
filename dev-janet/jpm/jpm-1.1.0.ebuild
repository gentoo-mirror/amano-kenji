# Copyright 1999-2021 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

DESCRIPTION="It is for automating builds and downloading dependencies of Janet projects."
HOMEPAGE="https://github.com/janet-lang/jpm"
SRC_URI="https://github.com/janet-lang/jpm/archive/refs/tags/v${PV}.tar.gz -> ${P}.tar.gz"
LICENSE="MIT"
SLOT="0"
KEYWORDS="~amd64"
RESTRICT="primaryuri"
BDEPEND="dev-lang/janet"
RDEPEND="dev-lang/janet"
DOCS="CHANGELOG.md README.md"

src_install() {
	einstalldocs
	modpath=$(janet -e "(print (dyn :syspath))")
	env DESTDIR="${ED}" PREFIX="/usr" JANET_LIBPATH="$(dirname $modpath)" \
		JANET_MODPATH="$modpath" janet bootstrap.janet
}
