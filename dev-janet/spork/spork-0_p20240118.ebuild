# Copyright 1999-2020 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=7

inherit janet-module

DESCRIPTION="Various Janet utility modules - the official \"Contrib\" library."
HOMEPAGE="https://github.com/janet-lang/spork"
COMMIT="028ebe27062581cfd4a3a8a2e6bdbf26e6458b4a"
SRC_URI="https://github.com/janet-lang/${PN}/archive/${COMMIT}.tar.gz -> janet-${P}.tar.gz"

LICENSE="MIT"
SLOT="0"
KEYWORDS="~amd64"

DEPEND=""
RDEPEND=""
S="${WORKDIR}/${PN}-${COMMIT}"
DOCS="README.md doc/*"
RESTRICT="primaryuri"
