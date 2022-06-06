# Copyright 1999-2020 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=7

inherit janet-module

DESCRIPTION="Utility functions for UTF-8"
HOMEPAGE="https://github.com/crocket/janet-utf8"
SRC_URI="https://github.com/crocket/janet-utf8/archive/v${PV}.tar.gz -> janet-${P}.tar.gz"

LICENSE="public-domain"
SLOT="0"
KEYWORDS="~amd64"

DEPEND=""
RDEPEND=""
S="${WORKDIR}/janet-${P}"
DOCS="README.md"
