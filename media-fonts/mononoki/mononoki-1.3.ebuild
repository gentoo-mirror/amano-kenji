# Copyright 1999-2020 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI="7"

inherit font

DESCRIPTION="a font for programming and code review"
HOMEPAGE="https://github.com/madmalik/mononoki"
SRC_URI="https://github.com/madmalik/${PN}/releases/download/${PV}/${PN}.zip -> ${P}.zip"

LICENSE="OFL-1.1"
SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE=""
RESTRICT="binchecks strip"
BDEPEND="app-arch/unzip"
FONT_SUFFIX="ttf"
FONT_CONF=( "${FILESDIR}/45-${PN}.conf" "${FILESDIR}/65-${PN}.conf" )
S="${WORKDIR}"
FONT_S="${S}/webfont"

src_prepare() {
	rm -r __MACOSX || die
	eapply_user
}
