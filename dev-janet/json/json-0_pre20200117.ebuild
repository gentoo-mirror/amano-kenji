# Copyright 1999-2020 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=7

inherit janet-module

DESCRIPTION="A JSON module for janet."
HOMEPAGE="https://github.com/janet-lang/json"
GIT_COMMIT="61437d96b5df6eb7e524f88847e7d7521201662d"
SRC_URI="https://github.com/janet-lang/json/archive/${GIT_COMMIT}.tar.gz -> janet-${P}.tar.gz"

LICENSE="MIT"
SLOT="0"
KEYWORDS="~amd64"

DEPEND=""
RDEPEND=""
S="${WORKDIR}/${PN}-${GIT_COMMIT}"
DOCS="README.md"
