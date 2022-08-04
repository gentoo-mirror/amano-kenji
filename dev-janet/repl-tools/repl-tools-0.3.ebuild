# Copyright 1999-2020 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=7

inherit janet-module

DESCRIPTION="a set of functions for janet REPL."
HOMEPAGE="https://github.com/crocket/janet-repl-tools"
SRC_URI="https://github.com/crocket/janet-repl-tools/archive/v${PV}.tar.gz -> janet-${P}.tar.gz"

LICENSE="public-domain"
SLOT="0"
KEYWORDS="~amd64"

DEPEND=""
RDEPEND=""
S="${WORKDIR}/janet-${P}"
DOCS="README.md"
