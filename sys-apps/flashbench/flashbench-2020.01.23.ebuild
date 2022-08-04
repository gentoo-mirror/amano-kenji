# Copyright 1999-2022 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

DESCRIPTION="Testing tool for managed flash memory devices"
HOMEPAGE="https://github.com/bradfa/flashbench"
COMMIT="d783b1bd2443812c6deadc31b081f043e43e4c1a"
SRC_URI="https://github.com/bradfa/flashbench/archive/${COMMIT}.tar.gz -> ${P}.tar.gz"
LICENSE="GPL-2"
SLOT="0"
KEYWORDS="~amd64"
RESTRICT="primaryuri"
S="${WORKDIR}/${PN}-${COMMIT}"
DOCS="README"

src_install() {
	einstalldocs
	dobin flashbench
	newbin erase flashbench-erase
}
