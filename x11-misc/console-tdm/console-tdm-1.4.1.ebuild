# Copyright 2019-2020 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=7

DESCRIPTION="Console display manager based on CDM"
HOMEPAGE="https://github.com/dopsi/console-tdm"

SRC_URI="https://github.com/dopsi/${PN}/archive/v${PV}.tar.gz -> ${P}.tar.gz"
KEYWORDS="~amd64 ~arm64 ~x86"

LICENSE="GPL-3"
SLOT="0"
IUSE=""

DEPEND=""
RDEPEND="app-shells/bash:0
	x11-apps/xinit"
DOCS="README.md ChangeLog.md"
PATCHES=( ${FILESDIR}/no-xdg-vtnr.patch )

src_compile() {
	:
}

src_install() {
	emake PREFIX=/usr DESTDIR="${D}" install
	einstalldocs
}
