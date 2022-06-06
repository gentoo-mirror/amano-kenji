# Copyright 1999-2020 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=7
inherit font

PROG_P="IPAfont${PV/.}"
DESCRIPTION="Fixed-width japanese fonts and variable-width japanese fonts"
HOMEPAGE="https://ipafont.ipa.go.jp/"
SRC_URI="https://ipafont.ipa.go.jp/IPAfont/${PROG_P}.zip"

LICENSE="IPAfont"
SLOT="0"
KEYWORDS="~amd64 ~x86"

S="${WORKDIR}/${PROG_P}"
FONT_SUFFIX="ttf"
FONT_CONF=( "${FILESDIR}/45-${PN}.conf" )
DOCS="Readme_${PROG_P}.txt"
