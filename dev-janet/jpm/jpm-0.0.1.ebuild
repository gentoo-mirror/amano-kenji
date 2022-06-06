# Copyright 1999-2021 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

DESCRIPTION="It is for automating builds and downloading dependencies of Janet projects."
HOMEPAGE="https://github.com/janet-lang/jpm"
SRC_URI="https://github.com/janet-lang/${PN}/archive/refs/tags/${PV}.tar.gz -> ${P}.tar.gz"
LICENSE="MIT"
SLOT="0"
KEYWORDS="~amd64"
RESTRICT="primaryuri"
DEPEND="dev-lang/janet"
RDEPEND="dev-lang/janet"
DOCS="CHANGELOG.md README.md"

src_install() {
	env DESTDIR="${D}" JANET_PREFIX="/usr" JANET_LIBPATH="/usr/$(get_libdir)" \
		JANET_MODPATH="/usr/$(get_libdir)/janet" janet bootstrap.janet
}
