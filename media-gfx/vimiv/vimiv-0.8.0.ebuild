# Copyright 1999-2022 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8
PYTHON_COMPAT=( python3_{6..9} )
inherit distutils-r1

DESCRIPTION="An image viewer with vim-like keybindings"
HOMEPAGE="https://karlch.github.io/vimiv-qt/"
SRC_URI="mirror://pypi/${PN:0:1}/${PN}/${P}.tar.gz"
LICENSE="GPL-3"
SLOT="0"
KEYWORDS="~amd64"
IUSE=""
RESTRICT="primaryuri"
RDEPEND=">=dev-python/PyQt5-5.9.2[${PYTHON_USEDEP}]"
DOCS="README.md AUTHORS"

src_install() {
	distutils-r1_src_install
	doman misc/vimiv.1
	insinto /usr/share/applications
	doins misc/vimiv.desktop
	insinto /usr/share/metainfo
	doins misc/org.karlch.vimiv.qt.metainfo.xml
}
