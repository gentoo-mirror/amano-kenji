# Copyright 1999-2020 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=7

inherit janet-module

DESCRIPTION="an HTTP and networking library"
HOMEPAGE="https://github.com/janet-lang/circlet"
GIT_COMMIT="b0b3d43beb437e61d09815a5b1e529653eafa569"
SRC_URI="https://github.com/janet-lang/circlet/archive/${GIT_COMMIT}.tar.gz -> janet-${P}.tar.gz"

LICENSE="GPL-2"
SLOT="0"
KEYWORDS="~amd64"

DEPEND=""
RDEPEND=""
S="${WORKDIR}/${PN}-${GIT_COMMIT}"
DOCS="README.md"
