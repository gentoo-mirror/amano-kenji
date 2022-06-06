# Copyright 1999-2021 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=7
inherit font

MY_P="Koruri-${PV}"
DESCRIPTION="Japanese TrueType font based on M+ outline fonts and Open Sans"
HOMEPAGE="https://koruri.github.io/"
SRC_URI="https://github.com/Koruri/Koruri/releases/download/${PV}/Koruri-${PV}.tar.xz"

LICENSE="Apache-2.0 OFL-1.1"
SLOT="0"
KEYWORDS="~amd64"

RESTRICT="primaryuri"
S="${WORKDIR}"
FONT_S="${S}"
FONT_SUFFIX="ttf"
DOCS="README.md README_EN.md"
