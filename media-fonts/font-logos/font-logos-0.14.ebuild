# Copyright 1999-2020 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=7
inherit font

DESCRIPTION="An icon font containing logos of linux distributions and other softwares."
HOMEPAGE="https://lukas-w.github.io/font-logos/"
SRC_URI="https://github.com/Lukas-W/${PN}/archive/v${PV}.tar.gz -> ${P}.tar.gz"

LICENSE="Unlicense"
SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE=""
RESTRICT="binchecks strip test"

DEPEND=""
RDEPEND=""

FONT_SUFFIX="ttf"
FONT_S="${S}/assets"
DOCS="README.md"
