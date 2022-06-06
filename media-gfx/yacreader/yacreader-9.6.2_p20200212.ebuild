# Copyright 1999-2020 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=7

inherit qmake-utils xdg

DESCRIPTION="A comic reader for reading and managing your digital comic collection"
HOMEPAGE="http://www.yacreader.com"
GIT_COMMIT="15c126fda5032f665038255a0df7400e6b16018f"
SRC_URI="https://github.com/YACReader/yacreader/archive/${GIT_COMMIT}.zip"
KEYWORDS="~amd64"
LICENSE="GPL-3"
SLOT="0"
IUSE="qrencode pdf"
DEPEND="
	dev-qt/qtcore:5
	dev-qt/qtmultimedia:5
	dev-qt/qtdeclarative:5
	dev-qt/qtimageformats:5
	dev-qt/qtquickcontrols:5
	dev-qt/qtsql:5[sqlite]
	dev-qt/qtscript:5
	dev-qt/qtopengl:5
	dev-qt/qtnetwork:5
	app-arch/unarr
	qrencode? ( media-gfx/qrencode )
	pdf? ( app-text/poppler[qt5] )
"
RDEPEND="${DEPEND}"
DOCS=( CHANGELOG.md README.md )
S="${WORKDIR}/${PN}-${GIT_COMMIT}"

src_configure(){
	eqmake5 YACReader.pro
}

src_install(){
	emake INSTALL_ROOT="${D}" install
	einstalldocs
}
