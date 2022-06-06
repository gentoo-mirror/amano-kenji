# Copyright 1999-2020 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=7

inherit janet-module

DESCRIPTION="A janet REPL using readline."
HOMEPAGE="https://github.com/andrewchambers/janet-rlrepl"
GIT_COMMIT="b97829e575ed551d5c7f9f299b2fe756f540833c"
SRC_URI="https://github.com/andrewchambers/janet-rlrepl/archive/${GIT_COMMIT}.tar.gz -> janet-${P}.tar.gz"

LICENSE="GPL-3"
SLOT="0"
KEYWORDS="~amd64"

DEPEND="sys-libs/readline"
RDEPEND="sys-libs/readline"
S="${WORKDIR}/janet-${PN}-${GIT_COMMIT}"
DOCS="README.md"
